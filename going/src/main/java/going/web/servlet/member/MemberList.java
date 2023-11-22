package going.web.servlet.member;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import going.domain.member.MemberRepository;
import going.domain.member.MemberVO;
import going.domain.view.MyView;

@WebServlet("/member/list")
public class MemberList  extends HttpServlet {
	
	MemberRepository memberRepository = MemberRepository.getInstance();

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<MemberVO> memberList = memberRepository.findAll();
		request.setAttribute("memberList", memberList);
		
		MyView mv = new MyView(request.getRequestURI());
		mv.render(request, response);
	}

}
