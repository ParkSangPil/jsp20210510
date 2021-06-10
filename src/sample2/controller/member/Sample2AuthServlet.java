package sample2.controller.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import sample2.dao.MemberDao;

/**
 * Servlet implementation class Sample2AuthServlet
 */
@WebServlet("/sample2/member/authNumber")
public class Sample2AuthServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Sample2AuthServlet() {
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
		HttpSession session = request.getSession();
		
		String id1 = request.getParameter("id1");
		
		if(id1 == null) {
			
			int num = (int) (Math.random()*999999);
			
			session.setAttribute("authRandomNumber", num);
			System.out.println(num);
			response.setContentType("text/plain; charset=utf-8");
			response.getWriter().append("ok1");
		} else {
			int num = (Integer) session.getAttribute("authRandomNumber");
			int num1 = Integer.parseInt(id1);
			response.setContentType("text/plain; charset=utf-8");
			if (num == num1) {
				response.getWriter().append("ok2");
			} else {
				response.getWriter().append("not ok");
			}

		}
		/////////////////////////////////
		//session.setAttribute("abc", num1);
		
		
		// 메일나 문자로 num값을 보내주고 흠흠
		
		
		
	}

}
