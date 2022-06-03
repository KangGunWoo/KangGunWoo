package com.exam.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class boardlistController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		process(req, resp);
	}	public void process(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String Title = req.getParameter("title");
		String Contents = req.getParameter("contents");
		String Yourname = req.getParameter("yourname");

		
		HttpSession session = req.getSession();
		session.setAttribute("yourname", Yourname);
		session.setAttribute("title", Title);
		session.setAttribute("contents", Contents);
		

		RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/Boardlist.jsp");
		rd.forward(req, resp);
	}

	
}

