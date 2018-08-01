package com.platform.admin.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.platform.admin.domain.GameVO;
import com.platform.admin.service.GameService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class Admin_myoController {

	@Inject
	GameService gameService;

	@RequestMapping("/")
	public String main() {

		return "admin_index";
	}

	@RequestMapping("/starting_info")
	public String starting_info() {
		return "sports/starting_info";
	}

	@RequestMapping("/schedule")
	public String schedule() {
		return "sports/play_schedule";
	}

	@RequestMapping("/record")
	public String record() {
		return "sports/play_record";
	}

	@RequestMapping(value = "/insert_schedule", method = RequestMethod.GET)
	public @ResponseBody boolean insert_schedule(int home1, int away1, Date date1, int home2, int away2, Date date2,
			int home3, int away3, Date date3, int home4, int away4, Date date4, int home5, int away5, Date date5) {

		Calendar cal = Calendar.getInstance();
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		cal.setTime(date1);
		cal.add(Calendar.DATE, -1);		
		GameVO vo1 = new GameVO();
		vo1.setAway(away1).setHome(home1).setDate(cal.getTime());
		GameVO vo2 = new GameVO();
		vo2.setAway(away2).setHome(home2).setDate(cal.getTime());
		GameVO vo3 = new GameVO();
		vo3.setAway(away3).setHome(home3).setDate(cal.getTime());
		GameVO vo4 = new GameVO();
		vo4.setAway(away4).setHome(home4).setDate(cal.getTime());
		GameVO vo5 = new GameVO();
		vo5.setAway(away5).setHome(home5).setDate(cal.getTime());
		try {
			gameService.insert_schedule(vo1, vo2, vo3, vo4, vo5);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return true;
	}

	@RequestMapping(value = "/select_schedule", method = RequestMethod.GET)
	public @ResponseBody List<HashMap<String, Object>> select_schedule() throws Exception {
		
		Calendar cal = Calendar.getInstance();		
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd");		
		List<GameVO> list = gameService.select_schedule();
		ArrayList<HashMap<String, Object>> mapList = new ArrayList<>();		
		HashMap<String, Object> gmap;
		for (GameVO li : list) {
			gmap = new HashMap<>();
			gmap.put("title", li.getAwayName() + li.getHomeName());
			cal.setTime(li.getDate());
			cal.add(Calendar.DATE, +1);
			gmap.put("start", cal.getTime());

			mapList.add(gmap);
		}
		return mapList;
	}
	
	@RequestMapping(value = "/select_startInfo", method = RequestMethod.GET)
	public @ResponseBody List<HashMap<String, Object>> select_startInfo(Date date) throws Exception {

		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");		
		List<GameVO> list = gameService.select_startInfo(sdf.format(date));		
		System.out.println(list);
		ArrayList<HashMap<String, Object>> teamList = new ArrayList<>();
		HashMap<String, Object> teamMap;
		for (GameVO li : list) {
			teamMap = new HashMap<>();
			teamMap.put("away", li.getAwayName());
			teamMap.put("home", li.getHomeName());
			
			teamList.add(teamMap);
		}
		return teamList;
 	}

}
