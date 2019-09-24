package com.driver.reservation.dao;

import java.util.List;

import com.driver.reservation.domain.Carpool;
import com.driver.reservation.domain.DriverReservation;

public interface DriverReservationDao {

	// 운전자 저장
	public int InsertReservation(DriverReservation reservation);

	//전체 리스트
	public List<Carpool> carpoolAllList(int d_idx);
	
	//카풀요청
	public List<DriverReservation> mycarpoolB(int d_idx);
		
	//나의카풀 - 수락한내역
	public List<DriverReservation> mycarpoolY(int d_idx);

	//삭제
	public int deleteCarpool(int dr_idx);
}
