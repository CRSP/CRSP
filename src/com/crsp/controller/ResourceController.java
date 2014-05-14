package com.crsp.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Calendar;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.crsp.dto.ResourceDTO;
import com.crsp.entity.Department;
import com.crsp.entity.Feature;
import com.crsp.entity.Progress;
import com.crsp.entity.Resource;
import com.crsp.entity.Resource_Type;
import com.crsp.entity.User;
import com.crsp.service.ResourceServiceI;
import com.crsp.service.UserServiceI;
import com.crsp.utils.Page;
import com.crsp.utils.Pages;
import com.crsp.utils.RegValidator;
import com.crsp.utils.TimeUtil;

@Controller
@SessionAttributes("status")
@RequestMapping(value = "/resource")
public class ResourceController {
	// resourceService
	@Autowired
	private ResourceServiceI resourceService;

	private RegValidator regValidator = new RegValidator();

	public ResourceServiceI getResourceService() {
		return resourceService;
	}

	public void setResourceService(ResourceServiceI resourceService) {
		this.resourceService = resourceService;
	}

	// userService
	@Autowired
	private UserServiceI userService;

	public UserServiceI getUserService() {
		return userService;
	}

	public void setUserService(UserServiceI userService) {
		this.userService = userService;
	}

	@RequestMapping(value = "/{schoolid}/{departmentid}", method = RequestMethod.GET)
	public String getResourceByID(@PathVariable int schoolid,
			@PathVariable int departmentid, Map<String, Object> model) {
		Page page = new Page();
		page.setPageNow(1);
		Pages resourcePages = resourceService
				.getResourceByDepartmentAndSchoolId(schoolid, departmentid,
						page);
		List resourceList = resourcePages.getPageList();
		model.put("resourceList", resourceList);
		model.put("page", page);
		model.put("from", "school");
		return "resource_list";
	}

	@RequestMapping(value = "/{schoolid}/{departmentid}/{p}", method = RequestMethod.GET)
	public String getResourceByID(@PathVariable int schoolid,
			@PathVariable int departmentid, @PathVariable int p,
			Map<String, Object> model) {
		Page page = new Page();
		page.setPageNow(p);
		Pages resourcePages = resourceService
				.getResourceByDepartmentAndSchoolId(schoolid, departmentid,
						page);
		List resourceList = resourcePages.getPageList();
		Department department = new Department();
		model.put("resourceList", resourceList);
		model.put("page", page);
		model.put("from", "school");
		model.put("schoolid", schoolid);
		model.put("departmentid", departmentid);
		return "resource_list";
	}

	@RequestMapping(value = "/newest")
	public String getNewestResource(Map<String, Object> model) {
		Page page = new Page();
		page.setPageNow(1);
		Pages resourcePages = resourceService.getNewestResource(page);
		List resourceList = resourcePages.getPageList();
		page = resourcePages.getPage();
		model.put("page", page);
		model.put("resourceList", resourceList);
		model.put("from", "newest");
		return "resource_list";
	}

	@RequestMapping(value = "/newest/{p}")
	public String getNewestResourceByPage(@PathVariable int p,
			Map<String, Object> model) {
		Page page = new Page();
		page.setPageNow(p);
		Pages resourcePages = resourceService.getNewestResource(page);
		List resourceList = resourcePages.getPageList();
		page = resourcePages.getPage();
		model.put("page", page);
		model.put("resourceList", resourceList);
		model.put("from", "newest");
		return "resource_list";
	}

	@RequestMapping(value = "/profile/{resourceid}", method = RequestMethod.GET)
	public String getResourceProfile(@PathVariable int resourceid, Map<String, Object> model) {
		ResourceDTO resourceProfile = resourceService.getProfile(resourceid);
		model.put("resource_profile", resourceProfile);
		return "download";
	}
	
	@RequestMapping(value = "/download/{resourceid}", method = RequestMethod.GET)
	@ResponseBody
	public Map getDownloadURL(HttpServletRequest request,
			HttpServletResponse response, @PathVariable int resourceid,
			HttpSession session) {
		// 判断是否登录
		Map msgMap = new HashMap();
		if (session.getAttribute("user_name") == null) {
			msgMap.put("isLogined", false);
			return msgMap;
		} else {

			Resource r = resourceService.getResource(resourceid);
			if (r != null) {
				Feature f = r.getFeature();
				String path = f.getPath();
				String fileName = "point.txt";

				// 从数据库获取资源路径
				String resourcePath = request.getSession().getServletContext()
						.getRealPath("/")
						+ File.separator + "resource" + File.separator + path;
				File file = new File(resourcePath);
				response.reset();
				response.addHeader("Content-Disposition",
						"attachment;filename=" + fileName);
				response.addHeader("Content-Length", "" + file.length());
				try {
					InputStream fis = new BufferedInputStream(
							new FileInputStream(resourcePath));
					byte[] buffer = new byte[fis.available()];
					fis.read(buffer);
					fis.close();
					OutputStream os = new BufferedOutputStream(
							response.getOutputStream());
					os.write(buffer);
					os.flush();
					os.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			return msgMap;
		}
	}

	@RequestMapping(value = "/upload", method = RequestMethod.GET)
	public String initUpload(Map<String, Object> model) {
		// 初始化类型，积分等选项
		List typeList = resourceService.getTypes();
		model.put("type_list", typeList);
		List priceList = new LinkedList();
		for (int i = 0; i < 10; i++) {
			priceList.add(i + 1);
		}
		model.put("price_list", priceList);
		return "upload";
	}

	@RequestMapping(value = "/create", method = RequestMethod.POST)
	@ResponseBody
	public void createResource(HttpSession session, HttpServletRequest request,
			@RequestParam(value = "resource_file") MultipartFile... files)
			throws IllegalStateException, IOException {

		// 登陆验证
		int userId = -1;
		try {
			userId = Integer.parseInt(session.getAttribute("ID").toString());
		} catch (Exception e) {
			return;
		}

		// 资源信息验证
		String resourceName = request.getParameter("resource_name");
		String resourceType = request.getParameter("resource_type");
		String resourcePrice = request.getParameter("resource_price");
		String code = session.getAttribute("code").toString();
		boolean isExisted = Boolean.parseBoolean(session.getAttribute(
				"isExisted").toString());
		List<Resource_Type> typeList = resourceService.getTypes();
		String rnMsg = this.regValidator.resourceNameValid(resourceName);
		String rtMsg = this.regValidator.resourceTypeValid(resourceType,
				typeList);
		String rpMsg = this.regValidator.resourcePriceValid(resourcePrice);
		Map msgMap = new HashMap();

		if (rnMsg.equals("") && rtMsg.equals("") && rpMsg.equals("")
				&& userId != -1 && !isExisted) {
			for (MultipartFile f : files) {
				// 按月分配文件夹存储用户上传资源
				Calendar cal = Calendar.getInstance();
				int year = cal.get(Calendar.YEAR);
				int month = cal.get(Calendar.MONTH) + 1;
				String Path = year + File.separator + month + File.separator;
				String originalName = f.getOriginalFilename();
				String ext = originalName.substring(originalName.indexOf("."));
				String fileName = code + ext;
				String resourcePath = request.getSession().getServletContext()
						.getRealPath("/")
						+ File.separator
						+ "resource"
						+ File.separator
						+ year
						+ File.separator + month + File.separator;

				if (f.getSize() > 0) {
					File dr = new File(resourcePath);
					File targetFile = new File(resourcePath + fileName);
					if (!dr.exists()) {
						dr.mkdirs();
					}
					f.transferTo(targetFile);// 写入目标文件
				}

				User u = userService.getUser(userId);

				// 写入特征文件记录
				Feature feature = new Feature();
				feature.setAmount(0);
				feature.setCode(code);
				feature.setPath(Path + fileName);
				resourceService.addFeature(feature);

				// 写入资源记录
				Resource resource = new Resource();
				resource.setDepartment_id(u.getDepartment().getId());
				Resource_Type rt = new Resource_Type();
				rt.setId(Integer.parseInt(resourceType));
				resource.setResource_type(rt);
				resource.setName(resourceName);
				resource.setSchool_id(u.getSchool().getId());
				resource.setTime(TimeUtil.getStringDateShort());
				resource.setUser_name(u.getUser_name());
				resource.setUser_id(userId);
				resource.setFeature(feature);
				resource.setPrice(Integer.parseInt(resourcePrice));
				resourceService.AddResource(resource);
			}
		}
	}

	@RequestMapping(value = "/upfile/existence", method = RequestMethod.POST)
	@ResponseBody
	public Map checkExistence(HttpServletRequest request, HttpSession session) {
		Map msgMap = new HashMap();
		// 判断是否存在相同资源
		String code = request.getParameter("code");
		Feature f = resourceService.getFeature(code);
		if (f == null) {
			msgMap.put("isExisted", false);
			session.setAttribute("isExisted", false);
			session.setAttribute("code", code);
			return msgMap;
		}
		msgMap.put("isExisted", true);
		session.setAttribute("isExisted", true);
		session.setAttribute("feature_id", f.getId());
		System.out.println("feature_id:" + f.getId());
		return msgMap;
	}

	@RequestMapping(value = "/put", method = RequestMethod.POST)
	@ResponseBody
	public void putResource(HttpServletRequest request, HttpSession session) {
		int userId = -1;
		if (session.getAttribute("ID") != null) {
			userId = Integer.parseInt(session.getAttribute("ID").toString());
		}
		String resourceType = request.getParameter("resource_type");
		String resourceName = request.getParameter("resource_name");
		int feature_id = Integer.parseInt(session.getAttribute("feature_id")
				.toString());
		Feature f = new Feature();
		f.setId(feature_id);
		String resourcePrice = request.getParameter("resource_price");
		if (userId != -1) {
			// 写入资源记录
			Resource resource = new Resource();
			User u = userService.getUser(userId);
			resource.setDepartment_id(u.getDepartment().getId());
			Resource_Type rt = new Resource_Type();
			rt.setId(Integer.parseInt(resourceType));
			resource.setResource_type(rt);
			resource.setName(resourceName);
			resource.setSchool_id(u.getSchool().getId());
			resource.setTime(TimeUtil.getStringDateShort());
			resource.setUser_name(u.getUser_name());
			resource.setUser_id(userId);
			resource.setPrice(Integer.parseInt(resourcePrice));
			resource.setFeature(f);
			resourceService.AddResource(resource);
		}
	}

	@RequestMapping(value = "/upfile/progress", method = RequestMethod.GET)
	@ResponseBody
	public Progress initCreateInfo(Map<String, Object> model) {
		Progress status = (Progress) model.get("status");
		return status;
	}
}