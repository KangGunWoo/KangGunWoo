package com.exam.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.apache.catalina.ant.ListTask;

public class boardViewController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		process(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		process(req, resp);
	}
	
	public void process(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String tit = req.getParameter("Tit");
		String con = req.getParameter("Con");
		String idx = req.getParameter("Idx");
		HttpSession session = req.getSession();
		session.setAttribute("tit", tit);
		session.setAttribute("con", con);
		session.setAttribute("idx", idx);
		
		
		RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/boardListView.jsp");
		rd.forward(req, resp);
	}

}