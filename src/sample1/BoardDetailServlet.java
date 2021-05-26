package sample1;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BoardDetailServlet
 */
@WebServlet("/sample1/detail")
public class BoardDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardDetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String index = request.getParameter("index");
		String password = request.getParameter("password");
		
		ServletContext application = request.getServletContext();
		List<Board> list = (List<Board>) application.getAttribute("boards");
		
		int i = Integer.parseInt(index);
		Board board = list.get(i);
		
		boolean ifModify = board.getPassword().equals(password);
		request.setAttribute("board", board);
		request.setAttribute("ifModify", ifModify);
		
		System.out.println(board);
		System.out.println(ifModify);
		
		String path = "/WEB-INF/sample1/boardDetail.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		request.setCharacterEncoding("utf-8");
//		
//		String index = request.getParameter("index");
//		
//		ServletContext application = request.getServletContext();
//		List<Board> list = (List<Board>) application.getAttribute("boards");
//		
//		int i = Integer.parseInt(index);
//		Board board = list.get(i);
//		
//		request.setAttribute("board", board);
//		
//		String title = request.getParameter("title");
//		String body = request.getParameter("body");
//		
//		board.setTitle(title);
//		board.setBody(body);
//		
//		response.sendRedirect(request.getContextPath()+"/sample1/list");
//		이 친구들은 boardDetail 에서 readonly를 하지 않았을 때
		doGet(request, response);
	}

}
