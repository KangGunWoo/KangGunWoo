package com.exam.dto;

import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

public class MycartDto {
	private int DelNum, Num;

	String img, title,price;
	public int getNum() {
		return Num;
	}
	public void setNum(int num) {
		Num = num;
	}
	  public int getDelNum() {
		return DelNum;
	}
	public void setDelNum(int delNum) {
		DelNum = delNum;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
}