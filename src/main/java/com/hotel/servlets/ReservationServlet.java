 package com.hotel.servlets;

import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hotel.DAO.ReservationDAOimp;


@WebServlet("/ReservationServlet")
public class ReservationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Integer roomId = Integer.valueOf(request.getParameter("roomId"));
		
		request.setAttribute("roomId", roomId);
		 request.getRequestDispatcher("/WEB-INF/Form.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    
	    Date startDate = Date.valueOf(request.getParameter("startDate"));
	    Date endDate = Date.valueOf(request.getParameter("endDate"));
	    Integer roomId = Integer.valueOf(request.getParameter("roomId"));

	    try {
	        
	        ReservationDAOimp reserve = new ReservationDAOimp();
	        reserve.Reserver(endDate,startDate, roomId);
	    } catch (Exception e) {
	        // Handle any exceptions that occur during the reservation process
	        e.printStackTrace();
	    }

	    // Redirect the user to the search result page after the reservation is processed
	    response.sendRedirect(request.getContextPath() + "/SearchResult");
	}


}