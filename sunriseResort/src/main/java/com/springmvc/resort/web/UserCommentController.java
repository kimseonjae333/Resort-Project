package com.springmvc.resort.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.springmvc.resort.dao.UserBoardCommentRepository;
import com.springmvc.resort.dao.UserBoardItemRepository;
import com.springmvc.resort.domain.UserBoardComment;
import com.springmvc.resort.domain.UserBoardItem;

import jakarta.servlet.http.HttpServletRequest;

@Controller
@RequestMapping(value = "/sunriseResort")
public class UserCommentController {

	@Autowired
	private UserBoardItemRepository userBoardItemRepository;

	@Autowired
	private UserBoardCommentRepository userBoardCommentRepository;

	// 댓글 쓰기
	@PostMapping("/userBoard_reinsert")
	public String CommentInsert(Model model, @RequestParam("id") int rootid, @RequestParam("commentWriter") String cw,
			@RequestParam("commentContent") String cc) {
		UserBoardItem userBoardItem = userBoardItemRepository.findById((long) rootid).get();

		UserBoardComment userBoardComment = new UserBoardComment();
		userBoardComment.setWriter(cw);
		userBoardComment.setContent(cc);
		userBoardItemRepository.save(userBoardItem);
		userBoardComment.setUserBoardItem(userBoardItem);

		userBoardCommentRepository.save(userBoardComment);

		model.addAttribute("item", userBoardItem);
		return "redirect:/sunriseResort/userBoard_view?id=" + rootid;
	}

	// 댓글 삭제
	@PostMapping("/userBoard_deleteComment")
	public String CommentDelete(Model model, @RequestParam("id") int rootid, @RequestParam("ComId") int ComId) {

		userBoardCommentRepository.deleteById((long) ComId);

		return "redirect:/sunriseResort/userBoard_view?id=" + rootid;
	}

	// 댓글 수정
	@PostMapping("/userBoard_updateComment/{commentId}")
	public String CommentUpdate(Model model, @PathVariable("commentId") int commentId, @RequestParam("rootId") int rootid, 
			@RequestParam("editWriter") String ew, @RequestParam("editContent") String ec) {

		UserBoardComment userBoardComment = userBoardCommentRepository.findById((long) commentId).get();
		userBoardComment.setWriter(ew);
		userBoardComment.setContent(ec);

		userBoardCommentRepository.save(userBoardComment);

		model.addAttribute("item", userBoardComment);
		return "redirect:/sunriseResort/userBoard_view?id=" + rootid;
	}

}
