package com.crsp.controller;

import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.crsp.entity.Department;
import com.crsp.entity.School;
import com.crsp.service.SchoolService;

@Controller
@RequestMapping(value = "/school")
public class SchoolController {
	@Autowired
	private SchoolService schoolService;

	public SchoolService getSchoolService() {
		return schoolService;
	}

	public void setSchoolService(SchoolService schoolService) {
		this.schoolService = schoolService;
	}

	@RequestMapping(value = "/list/school/{schoolid}", method = RequestMethod.GET)
	@ResponseBody
	public School getSchoolBySchoolId(@PathVariable int schoolid) {
		return null;
	}

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String getAllSchools(Map<String, Object> model) {
		// *假数据
		List schoolsList = new LinkedList();
		for (int i = 0; i < 10; i++) {
			School s = new School();
			s.setAvatar("");
			s.setDescription("    五邑大学在培养高素质创新型人才、取得突破性科研进展,以及为国民经济发展和社会进步提供智力支持等方面都发挥着极其重要的作用。五邑大学在培养高素质创新型人才、取得突破性科研进展,以及为国民经济发展和社会进步提供智力支持等方面都发挥着极其重要的作用。");
			s.setId(i);
			s.setName("五邑大学");
			s.setProvince_id(2);
			schoolsList.add(s);
		}
		model.put("schools", schoolsList);
		return "schools_list";
	}

	// 按省份找学校
	@RequestMapping(value = "/list/province/{provinceid}", method = RequestMethod.GET)
	@ResponseBody
	public List getSchoolsByProvinceId(@PathVariable int provinceid) {
		List schoolList = schoolService.findSchool(provinceid);
		return schoolList;
	}

	//获取学校详细信息(学校省份，资源数，院系列表等)
	@RequestMapping(value = "/profile/{schoolid}", method = RequestMethod.GET)
	public String getDepartmentBySchoolId(@PathVariable int schoolid, Map<String, Object> model) {
		//学院列表
		//学校信息

		Department d1 = new Department();
		d1.setDescription("经济管理学院是在建校初始就已组建的经济管理系的基础上，于2001年成立的我校第一个二级学院。学院拥有信息管理与信息系统、电子商务、工商管理、市场营销、会计学、国际经济与贸易、金融学、行政管理、旅游管理9个本科专业，拥有审计学、物流管理、纺织服装贸易、3个专业方向；其中，信息管理与信息系统是省级名牌专业、电子商务是省级特色专业，会计学是省办专业。目前在校全日制本科生3554名。 ");
		d1.setId(1);
		d1.setName("经济管理学院");

		Department d2 = new Department();
		d2.setDescription(" 政法学院发端于1986年成立的五邑大学社会科学与艺术部。2004年，根据广东省经济社会发展的需要，学校开设法学专业并开始招生，政治教育与法律系正式成立。2010年，五邑大学实施学院制办学，政治教育与法律系更名为政法学院。为了适应国家特别是广东省社会建设的需要，2012年学校开设社会工作专业方向并招生。");
		d2.setId(2);
		d2.setName("政法学院");

		Department d3 = new Department();
		d3.setDescription("中文系是五邑大学最早组建的教学系之一。从1985年建系起，中文系经历了从专科到本科，从单一专业到多个专业的发展过程。至2010年，中文系改建为文学院,下设中文系和对外汉语系，有汉语言文学和对外汉语两个本科专业（其中汉语言文学专业还包含一个师范方向），学生600余 人。");
		d3.setId(3);
		d3.setName("文学院");

		Department d4 = new Department();
		d4.setDescription("五邑大学外国语学院原名为五邑大学外国语言文学系。2010年改为现名。学校于1985年创建时即建立该系并招收国家全日制大学本科学生，１９９６年以优异的成绩通过了国家教委本科教学工作评估，2008年获教育部本科教学工作评估优秀成绩。学院下设英语系（翻译方向、英语教育方向），商务英语系（商务英语方向），日语系（国际商务日语方向）和公共外语教学部。目前我院在校生近500人。学院本着“打好基础，强化能力，注重素质，尊重个性，突出特色”的办学思路，着力打造应用型、复合型人才培养特色。");
		d4.setId(4);
		d4.setName("外语学院");

		Department d5 = new Department();
		d5.setDescription("数学与计算科学学院的前身是数学教研室，成立于1985年五邑大学创建之初。1991年教育部批准设立《数学与应用数学》本科专业，1992年成立数学物理系，同年《数学与应用数学》本科专业开始招生；2001年教育部批准设立《信息与计算科学》本科专业，2002年《信息与计算科学》本科专业开始招生；2011年《会计学》精算本科专业开始招生；2003年国务院学位委员会批准设立《应用数学》硕士点，2004年《应用数学》硕士点开始招生，2011年初国务院学位委员会批准数学一级硕士点。2009年底成立数学与计算科学学院。");
		d5.setId(5);
		d5.setName("数学与计算科学学院");

		Department d6 = new Department();
		d6.setDescription("1985年随着五邑大学的成立,学校设立了以数学、物理、体育三部分组成的基础部。1992年撤部建系成立数学物理系。 2008年应用物理学（光电子信息与技术方向）专业开始招生。应用物理专业光电子方向是国内最早培养ＬＥＤ专门人才的专业之一。2009年底五邑大学正式批准挂牌成立应用物理与材料学院。2011年、2012年电子信息工程（光电工程方向）专业、（半导体绿色光源方向）专业分别开始招生。2012年应用物理学专业批准为学士学位授予专业。");
		d6.setId(6);
		d6.setName("应用物理与材料学院");

		Department d7 = new Department();
		d7.setDescription("学院以“人才培养、科学研究和服务社会”为主线，积极探索教育教学规律、深化教学改革、提高人才培养质量；结合广东地方经济发展、社会需求和自身条件，争取在学科专业建设和科学研究、科技开发与服务社会方面取得明显成就；以“建成具有自身特色、在广东省有一定知名度和影响力的学院”为奋斗目标，以“培养能适应地方经济社会发展的信息类高素质应用型人才”为办学宗旨，努力实现学校总的人才培养目标和定位阀门。");
		d7.setId(7);
		d7.setName("信息工程学院");

		Department d8 = new Department();
		d8.setDescription("五邑大学的计算机专业创建于1985年，计算机学院现有计算机科学与技术、网络工程和软件工程三个本科专业和一个计算机应用技术专业硕士学位点。学院下设有计算机科学与工程系、软件工程系、网络工程系、公共计算机教学部、计算机综合实验中心。");
		d8.setId(8);
		d8.setName("计算机学院");

		Department d9 = new Department();
		d9.setDescription("机电工程学院现开设有机械工程及自动化专业、工业设计两个普通本科专业和交通工程专业（轨道车辆工程方向）、纺织工程专业（纺织机电一体化方向），现有全日制本科生人数1152名。");
		d9.setId(9);
		d9.setName("机电工程学院");

		Department d10 = new Department();
		d10.setDescription("土木建筑学院的前身是创建于1985年的五邑大学建筑工程系。1985年开始招收“工业与民用建筑”专业专科学生，1991年开始招收“城镇建设”专业本科学生。1999年建筑工程系更名为土木工程系，根据教育部高等院校本科专业新目录，“城镇建设”本科专业调整为“土木工程”专业，下设“房屋建筑”与“道路与桥梁”2个方向。2002年根据全国高等教育发展的形势和本地经济建设的要求，增设“工程管理”新专业。2004年起，我系又增设“建筑学”新专业，系名又变更为土木建筑系。2009年起，土木建筑系正式改为”土木建筑学院”，开始探索学院制办学之路。");
		d10.setId(10);
		d10.setName("土建学院");

		Department d11 = new Department();
		d11.setDescription("化学与环境工程学院的前身为五邑大学精细化工系，成立于1989年。1994年更名为化学工程系，1998年更名为化学与环境工程系，2010年成立化学与环境工程学院。学院目前下设二个教学系（化学工程系和环境工程系）；拥有“化学工程与工艺”、“环境工程”、“纺织化学与清洁生产”三个本科专业(方向)");
		d11.setId(11);
		d11.setName("化学与环境工程学院");

		Department d12 = new Department();
		d12.setDescription("纺织服装学院是五邑大学的重点院部之一，下设纺织系（包括染整专业）、轻化工程与材料系和纺织服装实验中心。学院拥有纺织工程（华南地区唯一的纺织工程本科专业，下设四个专业方向本科专业，拥有4个硕士学位授权点的纺织科学与工程一级学科，在校本科生与研究生共计1035人。2004年，纺织工程专业被评为广东省名牌专业，2010年该专业被评为广东省特色专业");
		d12.setId(12);
		d12.setName("纺织服装学院");

		Department d13 = new Department();
		d13.setDescription(" 五邑大学艺术设计类招生始于2000年，当时纺织服装系服装设计与工程专业开始招艺术考生（本科）；2001年五邑大学职业技术学院也开始招收艺术设计专业、美术教育专业学生（专科）。2004年土木工程系、机电工程系分别开办建筑学专业（本科）和工业设计专业（本科），并在当年招生。 ");
		d13.setId(15);
		d13.setName("艺术设计学院");

		List departmentsList = new LinkedList();
		departmentsList.add(d1);
		departmentsList.add(d2);
		departmentsList.add(d3);
		departmentsList.add(d4);
		departmentsList.add(d5);
		departmentsList.add(d6);
		departmentsList.add(d7);
		departmentsList.add(d8);
		departmentsList.add(d9);
		departmentsList.add(d10);
		departmentsList.add(d11);
		departmentsList.add(d12);
		departmentsList.add(d13);
		model.put("departments", departmentsList);
		return "departments_list";
	}

}