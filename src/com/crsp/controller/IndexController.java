package com.crsp.controller;

import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.crsp.entity.Province;
import com.crsp.entity.School;

@Controller
@RequestMapping(value="/")
public class IndexController {
	public static final int PER_PAGE = 25;
	
	//学校和资源的service
	
	//需要资源最多的12间学校
	//需要最新10个资源
	//Autowired
	@RequestMapping(value={"/", "/index"}, method=RequestMethod.GET)
	public String showIndexPage(Map<String, Object> model) {
		List schools = new LinkedList();
		List newResource = new LinkedList();
		//假数据
		School s1 = new School();
		s1.setDescription("截至2012年底，清华大学设有19个学院，55个系，已成为一所具。");
		s1.setId(1);
		s1.setName("清华大学");
		s1.setProvince_id(7);
		s1.setAvatar("views/avatars/default.jpg");
		
		School s2 = new School();
		s2.setDescription("北京大学是中国大陆高考竞争最激烈的大学之一。");
		s2.setId(1);
		s2.setName("北京大学");
		s2.setProvince_id(7);
		s2.setAvatar("views/avatars/default.jpg");
		
		School s3 = new School();
		s3.setDescription("华南理工大学[1]（South China University of Techn。");
		s3.setId(1);
		s3.setName("华南理工");
		s3.setProvince_id(7);
		s3.setAvatar("views/avatars/default.jpg");
		
		School s4 = new School();
		s4.setDescription("五邑大学在培养高素质创新型人才、取得突破性科研进展,以及为国民经济发展和社会进步提供智力支持等方面都发挥着极其重要的作用。");
		s4.setId(1);
		s4.setName("五邑大学");
		s4.setProvince_id(7);
		s4.setAvatar("views/avatars/default.jpg");
		
		School s5 = new School();
		s5.setDescription("五邑大学在培养高素质创新型人才、取得突破性科研进展,以及为国民经济发展和社会进步提供智力支持等方面都发挥着极其重要的作用。");
		s5.setId(1);
		s5.setName("五邑大学");
		s5.setProvince_id(7);
		s5.setAvatar("views/avatars/default.jpg");
		
		School s6 = new School();
		s6.setDescription("五邑大学在培养高素质创新型人才、取得突破性科研进展,以及为国民经济发展和社会进步提供智力支持等方面都发挥着极其重要的作用。");
		s6.setId(1);
		s6.setName("五邑大学");
		s6.setProvince_id(7);
		s6.setAvatar("views/avatars/default.jpg");
		
		schools.add(s1);
		schools.add(s2);
		schools.add(s3);
		schools.add(s4);
		schools.add(s5);
		schools.add(s6);
		model.put("schools", schools);
		return "index";
	}
}
