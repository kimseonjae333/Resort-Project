package com.springmvc.resort.web;

import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springmvc.resort.dao.ReservRepository;
import com.springmvc.resort.domain.Reservation;

import jakarta.servlet.http.HttpServletRequest;

@Controller
@RequestMapping(value = "/sunriseResort")
public class resortController {

	@Autowired
	private ReservRepository reservRepository;
	
	//메인
	@GetMapping("/home")
	public String home() {
		return "main";
	}
	
	//리조트 소개
	@GetMapping("/introduce")
	public String resortIntroduce() {
		return "/resort/introduce";
	}
	
	//오시는 길
	@GetMapping("/place")
	public String showPlace() {
		return "/resort/place";
	}
	
	//예약하기(현황 확인)
	@RequestMapping("/calendar")
	public String showCalendar(Model model) {

		Calendar cal = Calendar.getInstance(); // 현재 날짜 불러오기
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");

		String[] set = null; // 해당 날짜 세트로 만들어서 배열 완성
		List<String[]> sets = new ArrayList<>(); // 여러 개의 set을 담는 리스트

		for (int i = 0; i < 30; i++) { // 화면에 30개씩 출력
			Date date = cal.getTime();
			List<Reservation> resvlist = reservRepository.findAllByDate(df.format(date)); // 해당 날짜와 연관된 예약 데이터 확인

			set = new String[4]; // 초기화
			set[0] = df.format(date); // 예약일
			set[1] = "예약가능"; // 일반룸
			set[2] = "예약가능"; // 디럭스룸
			set[3] = "예약가능"; // 패밀리룸

			for (int j = 0; j < resvlist.size(); j++) {
				Reservation resv = resvlist.get(j);
				if (resv.getRoom() == 101 && resv.getName() != null) {
					set[1] = "예약마감";
				}
				if (resv.getRoom() == 102 && resv.getName() != null) {
					set[2] = "예약마감";
				}
				if (resv.getRoom() == 103 && resv.getName() != null) {
					set[3] = "예약마감";
				}
			}
			sets.add(set); // 리스트에 set 추가
			cal.add(Calendar.DAY_OF_MONTH, 1); // 다음 날짜로 설정
		}

		model.addAttribute("sets", sets); // view에 뿌리기
		return "/reservation/calendar";
	}
	
	//예약하기(예약하기 페이지 들어가기)
	@GetMapping("/cal_insert")
	public String calendar_insert(Model model, HttpServletRequest req) {
		String date = req.getParameter("date");
		String roomType = req.getParameter("room").replace("'", ""); // 따옴표 제거

		model.addAttribute("Date", date);
		model.addAttribute("roomType", roomType);
		return "/reservation/resv_insert";
	}
	
	//예약하기(예약하기)
	@PostMapping("/resv_insert")
	public String reservation_insert(Model model, HttpServletRequest req) {
		String date = req.getParameter("date"); // 날짜
		String roomType = req.getParameter("room").replace("'", ""); // 따옴표 제거
		int roomNumber = 0;
		if (roomType.equals("일반룸"))
			roomNumber = 101;
		else if (roomType.equals("디럭스룸"))
			roomNumber = 102;
		else if (roomType.equals("패밀리룸"))
			roomNumber = 103;
		String name = req.getParameter("name"); // 예약자명
		String tel = req.getParameter("tel"); // 예약자명
		String email = req.getParameter("email"); // 예약자명
		String depname = req.getParameter("depname"); // 입금자명
		String comment = req.getParameter("comment"); // 날짜

		Reservation reservation = new Reservation();
		reservation.setDate(date);
		reservation.setRoom(roomNumber);
		reservation.setName(name);
		reservation.setTel(tel);
		reservation.setEmail(email);
		reservation.setDepname(depname);
		reservation.setComment(comment);

		reservation.setProcessing(1);
		LocalDateTime currentDateTime = LocalDateTime.now();
		reservation.setRegdate(currentDateTime);

		reservRepository.save(reservation);
		return "redirect:/sunriseResort/calendar";
	}
	
	//룸1(일반룸)
	@GetMapping("/room1")
	public String showRoom1() {
		return "/room/room1";
	}
	
	//룸2(디럭스룸)
	@GetMapping("/room2")
	public String showRoom2() {
		return "/room/room2";
	}
	
	//룸3(패밀리룸)
	@GetMapping("/room3")
	public String showRoom3() {
		return "/room/room3";
	}
	
	//주변관광지1(올드타운)
	@GetMapping("/around1")
	public String showAround1() {
		return "/around/around1";
	}
	
	//주변관광지2(안방비치)
	@GetMapping("/around2")
	public String showAround2() {
		return "/around/around2";
	}
	
	//주변관광지3(코코넛배)
	@GetMapping("/around3")
	public String showAround3() {
		return "/around/around3";
	}
}