package com.springmvc.resort.dao;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.springmvc.resort.domain.UserBoardItem;

@Repository
public interface UserBoardItemRepository extends JpaRepository<UserBoardItem, Long>{
	Page<UserBoardItem> findAll(Pageable pageable);

	Page<UserBoardItem> findAllByTitleContaining(String search, Pageable pageable);
}

