package com.hotel.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hotel.DAO.ReservationDAOimp;
import com.hotel.model.Reservation;

@WebServlet("/ReservationServlet")
public class ReservationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ReservationDAOimp reservationdao = new ReservationDAOimp();
        List<Reservation> reservations = reservationdao.selectAllReservation();
        request.setAttribute("listreservation", reservations);
        request.getRequestDispatcher("/WEB-INF/Reservation.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/Reservation.jsp").forward(request, response);
	}

}
