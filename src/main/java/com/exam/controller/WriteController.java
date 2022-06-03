package com.exam.controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.*;
import javax.servlet.http.*;

import com.exam.dao.MemberDao;
import com.exam.dao.WriteDao;
import com.exam.dto.MemberDto;
import com.exam.dto.WriteDto;

import oracle.sql.DATE;

public class WriteController extends HttpServlet {
	int acc = 1;


	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		process(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		process(req, resp);
	}
	

	protected void process(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		HttpSession session = req.getSession();
		

		String title = req.getParameter("Tit");

		String content = req.getParameter("Conte");

		String writer= req.getParameter("writer");
		
		int hit = 0;
		
		WriteDao wDao = WriteDao.getInstance();
		WriteDto wDto = new WriteDto();

		wDto.setTitle(title);
		wDto.setContent(content);
		wDto.setHit(hit);
		wDto.setWriter(writer);
		int joinResult = wDao.join(wDto);
		acc++;
		
	if(req.getAttribute("sessionID")==null) {
		
	}
		if (joinResult == 1) {
		req.setAttribute("joinResult", joinResult);

			RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/Board.jsp");

			rd.forward(req, resp);
		
			
		} else {

			req.setAttribute("joinResult", 0);
			RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/tottenham.jsp");
			rd.forward(req, resp);
		}
	}
	
}