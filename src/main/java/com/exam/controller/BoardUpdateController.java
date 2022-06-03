package com.exam.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.exam.dao.WriteDao;
import com.exam.dto.WriteDto;

public class BoardUpdateController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/BoardUpdate.jsp");
		rd.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		process(req, resp);
	}
	



	protected void process(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		WriteDao wDao = WriteDao.getInstance();
		WriteDto wDto = new WriteDto();
		HttpSession session = req.getSession();
		String retit = req.getParameter("reTit");
		String reCon = req.getParameter("reConte");
		
		String reidx = (String) session.getAttribute("idx");
		wDto.setIdx(Integer.parseInt(reidx));
		
		wDto.setTitle(retit);
		wDto.setContent(reCon);

		
		int joinResult = wDao.Update(wDto);
		
	
		if (joinResult == 1) {
	
			req.setAttribute("joinResult", joinResult);
	
			RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/Board.jsp");
			System.out.println(joinResult+"삭제완료에영");
			rd.forward(req, resp);
			
		} else {
			req.setAttribute("joinResult", 0);
			RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/Board.jsp");
			System.out.println(joinResult+"에요");
			rd.forward(req, resp);
		}
		
	}

}
	
