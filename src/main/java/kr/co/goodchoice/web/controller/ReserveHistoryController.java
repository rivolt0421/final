package kr.co.goodchoice.web.controller;

import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.goodchoice.dto.CommonUtils;
import kr.co.goodchoice.vo.Reservation;

@Controller
public class ReserveHistoryController {

	@GetMapping(path = "/reserve")
	public String reserveHistory(@RequestParam(name = "date", required = false) @DateTimeFormat(pattern = "yyyy-MM-dd") Date date, Model model) {
		if (date == null) {
			date = CommonUtils.getFirstDateOfMonth();
		}
		
		List<List<Reservation>> data = List.of(
				
		);
		
		model.addAttribute("rows", CommonUtils.generateRows(date, data));
		return "host/reservehistory";
	}
	
}
