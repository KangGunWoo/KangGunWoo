package com.exam.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.exam.dao.MemberDao;
import com.exam.dao.MycartDao;
import com.exam.dto.MemberDto;
import com.exam.dto.MycartDto;

public class DeleteController extends HttpServlet {
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		MycartDao cDao = MycartDao.getInstance();
		MycartDto cDto = new MycartDto();

		int joinResult = cDao.delete(cDto);
		
	
		if (joinResult == 1) {
			req.setAttribute("joinResult", joinResult);
			HttpSession session = req.getSession();
			RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/Mycart.jsp");
			System.out.println(joinResult+"삭제완료에영");
			rd.forward(req, resp);
			
		} else {
			req.setAttribute("joinResult", 0);
			RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/Mycart.jsp");
			System.out.println(joinResult+"에요");
			rd.forward(req, resp);
		}
	}
	
}