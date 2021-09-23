package com.study.springboot.dto;

import lombok.Data;

@Data
public class BookListDto {
	private int 	book_Index;
	private String 	book_Title;
	private String 	book_Writer;
	private String 	book_Company;
	private String 	book_Content;
	private String 	book_Introduce;
	private String 	book_review;
	private String 	book_Image;

	public BookListDto() {		}

	public int getBook_Index() {
		return book_Index;
	}

	public void setBook_Index(int book_Index) {
		this.book_Index = book_Index;
	}

	public String getBook_Title() {
		return book_Title;
	}

	public void setBook_Title(String book_Title) {
		this.book_Title = book_Title;
	}

	public String getBook_Writer() {
		return book_Writer;
	}

	public void setBook_Writer(String book_Writer) {
		this.book_Writer = book_Writer;
	}

	public String getBook_Company() {
		return book_Company;
	}

	public void setBook_Company(String book_Company) {
		this.book_Company = book_Company;
	}

	public String getBook_Content() {
		return book_Content;
	}

	public void setBook_Content(String book_Content) {
		this.book_Content = book_Content;
	}

	public String getBook_Introduce() {
		return book_Introduce;
	}

	public void setBook_Introduce(String book_Introduce) {
		this.book_Introduce = book_Introduce;
	}

	public String getBook_review() {
		return book_review;
	}

	public void setBook_review(String book_review) {
		this.book_review = book_review;
	}

	public String getBook_Image() {
		return book_Image;
	}

	public void setBook_Image(String book_Image) {
		this.book_Image = book_Image;
	}

}

/*	book_Index            number(6) primary key,
  	book_Title            varchar2(20) not null,
  	book_Writer           varchar2(20) not null,
  	book_Company          varchar2(20) not null,
  	book_Image            varchar2(100) not null,
  	book_Content          varchar2(300) not null,
  	book_Introduce        varchar2(1000) not null,
  	book_review           varchar2(300)			  */
