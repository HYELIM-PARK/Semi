package review.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import review.dto.Review;
import review.service.face.ReviewService;
import review.service.impl.ReviewServiceImpl;
import review.dto.BoardFile;

@WebServlet("/review/view")
public class ReviewViewController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private ReviewService reviewService = new ReviewServiceImpl();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("/review/view [GET] 요청완료");
		
		//전달 파라미터 얻기
		Review reviewno = reviewService.getReviewno(req);
		//상세보기 결과 조회
		Review viewReview = reviewService.view(reviewno);
		
		//조회결과 MODEL값 전달
		req.setAttribute("viewReview", viewReview);
		
		//첨부파일 정보 VIEW에 전달
		BoardFile boardFile = reviewService.viewFile(viewReview);
		req.setAttribute("boardFile", boardFile);
		
		//VIEW 지정 및 응답 - forward
		req.getRequestDispatcher("/WEB-INF/views/review/view.jsp").forward(req, resp);	
		
		
	}
}
