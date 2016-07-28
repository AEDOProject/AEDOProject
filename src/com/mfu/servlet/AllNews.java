package com.mfu.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.mfu.dao.*;
import com.mfu.entity.*;

/**
 * Servlet implementation class AllNews
 */
@WebServlet("/Back_End/AllNews")
public class AllNews extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AllNews() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String type = new String(request.getParameter("type").getBytes("ISO-8859-1"), "UTF-8");
		
		List<ArticleType> typeid = new ArticleTypeDAO().findByTitle(type);
		System.out.print(typeid.get(0).getId());
		List<Article> list = new ArticleTypeDAO().getArticleByArticleType(typeid.get(0).getId());
		request.setAttribute("listnews", list);
		
		request.setAttribute("typeid", typeid.get(0).getId());
		request.setAttribute("url", "http://www.journaldev.com");
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/Back_End/allnews.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
String type = new String(request.getParameter("type").getBytes("ISO-8859-1"), "UTF-8");
		
		List<ArticleType> typeid = new ArticleTypeDAO().findByTitle(type);
		System.out.print(typeid.get(0).getId());
		List<Article> list = new ArticleTypeDAO().getArticleByArticleType(typeid.get(0).getId());
		request.setAttribute("listnews", list);
		
		request.setAttribute("typeid", typeid.get(0).getId());
		request.setAttribute("url", "http://www.journaldev.com");
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/Back_End/allnews.jsp");
		rd.forward(request, response);
	}

}
