package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class JoinPageController
 */
@WebServlet("/member/join")
public class JoinPageController extends HttpServlet {
	private static final long serialVersionUID = 1L;


	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("/member/join [GET]");
		// 회원가입폼으로
		req.getRequestDispatcher("/WEB-INF/views/member/join.jsp").forward(req, resp);

	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("/member/join [POST]");
		
		System.out.println(req.getParameter("year"));
	}

}