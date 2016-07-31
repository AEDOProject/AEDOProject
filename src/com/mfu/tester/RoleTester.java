package com.mfu.tester;
import com.mfu.entity.*;
import com.mfu.dao.*;
public class RoleTester {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		TrainingType role = new TrainingType();
		role.setTrainingtypename("Staff Training 2018");
		role.setYear("2563");
		role.setShow(true);
		
		TrainingTypeDAO roledao = new TrainingTypeDAO();
		roledao.create(role);
		
		for(TrainingType list : roledao.getAllTrainingType()){
			System.out.println("id: "+list.getId()+" name: "+list.getTrainingtypename());
		}
	}

}
