package com.demo.bean;

public class ProductBook extends Product {
	private String authorID;

	public ProductBook() {
	}

	public ProductBook(String id, String name, String description, int price, String authorID) {
		super(id, name, description, price);
		this.authorID = authorID;
	}

	public String getAuthorID() {
		return authorID;
	}

	public void setAuthorID(String authorID) {
		this.authorID = authorID;
	}

}
