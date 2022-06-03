package com.exam.controller;

import java.io.IOException;
import java.sql.Connection;
import java.text.Format;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;



import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.exam.dao.MemberDao;
import com.exam.dao.MycartDao;
import com.exam.dto.MemberDto;
import com.exam.dto.MycartDto;

public class CartController extends HttpServlet {

	int a = 0;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/tottenham.jsp");
		rd.forward(req, resp);
	}

	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		
		int DelNum=0;

		String img = req.getParameter("img");
		String title = req.getParameter("title");
		String price = req.getParameter("price");
		
		MycartDao cDao = MycartDao.getInstance();
		MycartDto cDto = new MycartDto();
		List<MycartDto> list = cDao.selectList();
		DelNum=list.size();
		System.out.println(DelNum+"델넘버");
		cDto.setDelNum(DelNum);
		cDto.setNum(a+1);
		cDto.setImg(img);
		cDto.setTitle(title);
		cDto.setPrice(price);
		DelNum++;
		


		
		int joinResult = cDao.join(cDto);
		


	
	
		if (joinResult == 1) {
			a++;
			req.setAttribute("joinResult", joinResult);


			HttpSession session = req.getSession();

			
			RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/tottenham.jsp");
			System.out.println(joinResult+"에요");
			rd.forward(req, resp);
			
		} else {
			req.setAttribute("joinResult", 0);
			RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/tottenham.jsp");
			System.out.println(joinResult+"에요");
			rd.forward(req, resp);
		}
	}
	




}