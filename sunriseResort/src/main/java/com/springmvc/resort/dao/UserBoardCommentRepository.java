package com.springmvc.resort.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.springmvc.resort.domain.UserBoardComment;

@Repository
public interface UserBoardCommentRepository extends JpaRepository<UserBoardComment, Long>{

}
