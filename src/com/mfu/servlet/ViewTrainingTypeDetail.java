package com.mfu.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mfu.dao.TrainingTypeDAO;
import com.mfu.entity.TrainingType;

/**
 * Servlet implementation class ViewTrainingTypeDetail
 */
@WebServlet("/Back_End/ViewTrainingTypeDetail")
public class ViewTrainingTypeDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewTrainingTypeDetail() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String typeid = request.getParameter("typeid");
		TrainingType trainingtype = new TrainingTypeDAO().findTrainingTypeById(Long.parseLong(typeid));
		request.setAttribute("trainingtype", trainingtype);
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/Back_End/viewtypedetail.jsp");
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
