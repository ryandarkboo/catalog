package com.demo.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.demo.bean.ProductBook;
import com.demo.dao.AccountHolderDAO;
import com.demo.util.DatabaseConfig;

@WebServlet(urlPatterns="/book")
public class Book extends HttpServlet {

	private AccountHolderDAO accountHolderDAO;
	private DatabaseConfig databaseConfig;

	@Override
	public void init() throws ServletException {
		this.databaseConfig = new DatabaseConfig();
		this.accountHolderDAO = new AccountHolderDAO(databaseConfig.getUrl(), 
													 databaseConfig.getUsername(), 
													 databaseConfig.getPassword());
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("/displayProductBook.jsp");
		List<ProductBook> products = accountHolderDAO.getBook();
		request.setAttribute("ProductList", products);
		dispatcher.forward(request, response);
	}

}
