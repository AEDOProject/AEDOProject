package com.mfu.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mfu.dao.*;
import com.mfu.entity.*;
import java.util.*;

/**
 * Servlet implementation class Training
 */
@WebServlet("/Back_End/Training")
public class Training extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Training() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String typeid = request.getParameter("typeid");
		List<TrainingProject> listtraining = new TrainingTypeDAO().getTrainingProjectByTrainingType(Long.parseLong(typeid));
		request.setAttribute("listtraining", listtraining);
		request.setAttribute("trainingtype", new TrainingTypeDAO().findTrainingTypeById(Long.parseLong(typeid)));
		
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/Back_End/intraining.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
