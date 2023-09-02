package com.springmvc.resort.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.springmvc.resort.domain.Reservation;

@Repository
public interface ReservRepository extends JpaRepository<Reservation, Long>{
	List<Reservation> findAllByDate(String date);
}
