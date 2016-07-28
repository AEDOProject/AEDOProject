package com.mfu.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mfu.dao.*;
import com.mfu.entity.*;

/**
 * Servlet implementation class newTrainingType
 */
public class newTrainingType extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String typename = request.getParameter("typename");
		String typenameen = new String(typename.getBytes("ISO-8859-1"), "UTF-8");
		String year = request.getParameter("year");
		TrainingTypeDAO traindao = new TrainingTypeDAO();
		boolean pass = true ;
		List<TrainingType> listtraining = traindao.getAllTrainingType();
		for(TrainingType type : listtraining){
			if(type.getTrainingtypename().equals(typenameen)){
				pass = false ;
				break;
			}
		}
		if(pass == true){
			TrainingType trainingtype = new TrainingType();
			trainingtype.setTrainingtypename(typenameen);
			trainingtype.setYear(year);
			trainingtype.setShow(pass);
			
			TrainingTypeDAO traintypedao = new TrainingTypeDAO();
			traintypedao.create(trainingtype);
			
			response.setStatus(HttpServletResponse.SC_OK);
			response.setContentType("application/json");
			response.getWriter().print(1);
			response.getWriter().flush();
		}else{
			response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
			response.setContentType("application/json");
			response.getWriter().print(1);
			response.getWriter().flush();
		}
		
		
	}

}
