package com.mfu.servlet;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.Date;

import com.mfu.dao.*;
import com.mfu.entity.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.commons.io.IOUtils;





@WebServlet("/addArticle")
@MultipartConfig(maxFileSize = 25177215)
// upload file's size up to 16MB
public class addnewArticle extends HttpServlet {

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String afterpart = null;
		if (request.getPart("photo") != null) {
			Part filePart = request.getPart("photo"); // Retrieves <input
														// type="file"
														// name="file">
			String fileName = getFileName(filePart);

			// String fileType = filePart.getContentType();
			InputStream fileContent = filePart.getInputStream();

			// Create folder if no existing folder
			File folderPart = new File(request.getServletContext().getRealPath("")+File.separator+"Back_End\\uploadarticle");
			if (!folderPart.exists()) {
				folderPart.mkdir();
			}

			try {

				// Directory
				afterpart = request.getServletContext().getRealPath("")+File.separator+"Back_End\\uploadarticle\\" + fileName;
				// Copy file to the part that we set before.
				FileOutputStream output = new FileOutputStream(afterpart);
				IOUtils.copy(fileContent, output);

				afterpart = "uploadarticle/" + fileName;

			} catch (Exception e) {
				afterpart = null;
			}

		}
		String title = request.getParameter("title");
		String titleen = new String(title.getBytes("ISO-8859-1"), "UTF-8");
		String content = request.getParameter("editor");
		String contenten = new String(content.getBytes("ISO-8859-1"), "UTF-8");
		long articletypeid = Long.parseLong(request.getParameter("articletype"));
		long worktypeid = Long.parseLong(request.getParameter("worktype"));
		Article article = new Article();
		article.setTitle(titleen);
		article.setContent(contenten);
		Date date = new Date();
		article.setDate(date);
		article.setLastupate(date);
		article.setPhoto(afterpart);
		article.setArticletype(new ArticleTypeDAO().findArticleTypeById(articletypeid));
		article.setWorktype(new WorkTypeDAO().findWorkTypeById(worktypeid));
		
		ArticleDAO dao = new ArticleDAO();
		
		dao.create(article);
		
		// Return page
		doGet(request, response);
		

	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//getServletContext().getRequestDispatcher("/Back_End/allnewsandevent.jsp").forward(
		//		request, response);
		response.sendRedirect("Back_End/allnewsandevent.jsp");
	}

	private static String getFileName(Part part) {
		for (String cd : part.getHeader("content-disposition").split(";")) {
			if (cd.trim().startsWith("filename")) {
				String fileName = cd.substring(cd.indexOf('=') + 1).trim()
						.replace("\"", "");
				return fileName.substring(fileName.lastIndexOf('/') + 1)
						.substring(fileName.lastIndexOf('\\') + 1); // MSIE fix.
			}
		}
		return null;
	}
}