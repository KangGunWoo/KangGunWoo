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

public class BoardDeleteController extends HttpServlet {
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
		
		WriteDao wDao = WriteDao.getInstance();
		WriteDto wDto = new WriteDto();
		HttpSession session = req.getSession();
		String re = (String) session.getAttribute("idx");
		System.out.println(re+"re값 머야");
		
		wDto.setIdx(Integer.parseInt(re));
		
		int joinResult = wDao.deleteper(wDto);
		
	
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
	

