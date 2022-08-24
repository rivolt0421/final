package kr.co.goodchoice.web.controller;

import java.sql.Date;
import java.time.LocalDate;
import java.time.Period;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.co.goodchoice.service.ReservationService;
import kr.co.goodchoice.service.UserService;
import kr.co.goodchoice.vo.Rooms;

@Controller
public class ReservationController {
	
	@Autowired
	private ReservationService reservationService;

	@Autowired
	private UserService userService;
	
	@GetMapping(path = "/reservationform")
	public String reservationform(Model model, int roomNo, String checkin, String checkout) {
		
		LocalDate checkinDate = LocalDate.parse(checkin);
		LocalDate checkoutDate = LocalDate.parse(checkout);
		Period p = Period.between(checkinDate, checkoutDate);
		int bak = p.getDays();
		
		Rooms room = reservationService.getRoomInfoByNo(roomNo);
			String houseName = room.getHouseNo().getName();
			String roomName = room.getName();
			int price = room.getPrice();
		
		model.addAttribute("houseName", houseName);
		model.addAttribute("roomName", roomName);
		model.addAttribute("checkinDate", Date.valueOf(checkinDate));
		model.addAttribute("checkoutDate", Date.valueOf(checkoutDate));
		model.addAttribute("bak", bak);
		model.addAttribute("price", price);
		
		return "reservation/reservationform";
	}
	
	@GetMapping(path = "user/reservation")
	public String reservationlist() {
		return "reservation/reservationlist";
	}
	
	@GetMapping(path = "user/reservation/reservationdetail")
	public String reservationdetail() {
		return "reservation/reservationdetail";
	
	}
	
	@GetMapping(path = "user/reservation/canceldetail")
	public String canceldetail() {
		return "reservation/canceldetail";
	}
}
