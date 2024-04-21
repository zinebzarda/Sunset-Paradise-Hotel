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
		Date startDate=Date.valueOf(request.getParameter("startDate"));
 		Date endDate=Date.valueOf(request.getParameter("endDate"));
 	   Integer idRoom=Integer.valueOf(request.getParameter("roomId"));
 	 
 	   ReservationDAOimp reserve =new ReservationDAOimp();
try {
	reserve.Reserver(startDate,endDate,idRoom);
} catch (ClassNotFoundException e) {
	
	e.printStackTrace();
} catch (SQLException e) {
	// TODO Auto-generated catch block 
	e.printStackTrace();
}

            request.getRequestDispatcher("/WEB-INF/Form.jsp").forward(request, response);
	}
	

}
