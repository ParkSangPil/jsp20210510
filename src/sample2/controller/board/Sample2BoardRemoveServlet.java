package sample2.controller.board;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sample2.bean.BoardDto;
import sample2.bean.Member;
import sample2.dao.BoardDao;

/**
 * Servlet implementation class Sample2BoardRemoveServlet
 */
@WebServlet("/sample2/board/remove")
public class Sample2BoardRemoveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Sample2BoardRemoveServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String boardId = request.getParameter("boardId");
		
		BoardDao dao = new BoardDao();
		BoardDto board = dao.get2(Integer.parseInt(boardId));
		
		Member member = (Member) request.getSession().getAttribute("userLogined");
		
		if (board.getMemberId().equals(member.getId())) {
			BoardDto newBoard = new BoardDto();
			newBoard.setBoardId(Integer.parseInt(boardId));
			
			boolean ok = dao.remove(newBoard);
			
			if(ok) {				
				request.getSession().setAttribute("message", "삭제되었습니다.");
				
				String path = request.getContextPath()+"/sample2/board/list";
				response.sendRedirect(path);
			}else {
				request.getSession().setAttribute("message", "삭제중 오류 발생.");
			}
		}else {
			request.getSession().setAttribute("message", "작성자가 아닙니다.");
		}
//		String path = "/WEB-INF/sample2/board/detail?id="+boardId;
//		request.getRequestDispatcher(path).forward(request, response);
	}

}
