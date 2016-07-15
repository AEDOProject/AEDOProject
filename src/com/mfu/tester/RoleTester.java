package com.mfu.tester;
import com.mfu.entity.*;
import com.mfu.dao.*;
public class RoleTester {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Role role = new Role();
		role.setRolename("HLLC Staff");
		
		RoleDAO roledao = new RoleDAO();
		roledao.create(role);
		
		for(Role list : roledao.getAllRole()){
			System.out.println("id: "+list.getId()+" name: "+list.getRolename());
		}
	}

}
