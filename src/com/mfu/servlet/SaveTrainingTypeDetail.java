package com.mfu.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mfu.dao.TrainingTypeDAO;
import com.mfu.entity.TrainingType;

/**
 * Servlet implementation class SaveTrainingTypeDetail
 */
@WebServlet("/Back_End/SaveTrainingTypeDetail")
public class SaveTrainingTypeDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SaveTrainingTypeDetail() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.sendRedirect("ViewTraining");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String detail = request.getParameter("editor");
		String endetail = new String(detail.getBytes("ISO-8859-1"), "UTF-8");
		long trainingtypeid = Long.parseLong(request.getParameter("typeid"));
		
		TrainingType trainingtype = new TrainingTypeDAO().findTrainingTypeById(trainingtypeid);
		trainingtype.setDetail(endetail);
		
		TrainingTypeDAO dao = new TrainingTypeDAO();
		dao.update(trainingtype);
		
		doGet(request,response);
	}

}
