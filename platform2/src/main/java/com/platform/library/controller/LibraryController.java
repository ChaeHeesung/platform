package com.platform.library.controller;

import java.util.Iterator;
import javax.inject.Inject;

import org.bson.Document;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoCollection;
import com.platform.library.service.BookinfoService;
import com.platform.library.service.RecommendService;
import com.platform.library.util.Criteria;
import com.platform.library.util.MongoUtil;
import com.platform.library.util.PagingUtil;

@Controller
public class LibraryController {

	private static final Logger logger = LoggerFactory.getLogger(LibraryController.class);

	@Inject
	private RecommendService service;
	@Inject
	private BookinfoService bservice;

	@RequestMapping("/")
	public String main() {

		return "main_library";
	}

	@RequestMapping("/map")
	public String map() {

		return "map_library";
	}

	@RequestMapping(value = "/recommend", method = RequestMethod.GET)
	public String recommend(@ModelAttribute("cri") Criteria cri, Model model)
			throws Exception {
		// logger.info("recommend_library");
		// List<RecommendVO> listrec = service.selectRec();
		// model.addAttribute("listrec", listrec);
		logger.info(cri.toString());
		model.addAttribute("list", service.listCrteria(cri));
		PagingUtil PagingUtil = new PagingUtil();
		PagingUtil.setCri(cri);
		PagingUtil.setTotalCount(service.listCountCriteria(cri));
		model.addAttribute("PagingUtil", PagingUtil);
		return "recommend_library";
	}

	@RequestMapping("/record")
	public String record() {

		return "record_library";
	}

	@RequestMapping("/best")
	public String listBigbirds(Model m) {
		MongoCollection<Document> col = MongoUtil.getCollection("crawling_bs", "bestseller");
		// find  
		FindIterable<Document> docs = col.find();
		// Iterable을 list로 변환
		Iterator<Document> it = docs.iterator();
		// setAttribute
		m.addAttribute("list", it);
		// return
		return "best_library";
	}
	
	@RequestMapping(value = "/book", method = RequestMethod.GET)
	public String book(@ModelAttribute("cri") Criteria cri, Model model)
			throws Exception {
		logger.info(cri.toString());
		model.addAttribute("list", bservice.listCrteria(cri));
		PagingUtil PagingUtil = new PagingUtil();
		PagingUtil.setCri(cri);
		PagingUtil.setTotalCount(bservice.listCountCriteria(cri));
		model.addAttribute("PagingUtil", PagingUtil);
		return "book_library";
	}
}
