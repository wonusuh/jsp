/**
 * 
 */
package command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author YONSAI
 *
 */
public class MemberModify implements CommandProcessor {

	/**
	 * @param args
	 */

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) {
		// TODO Auto-generated method stub
//		회원정보 수정과 관련된 비즈니스 로직 처리
		req.setAttribute("member_mod", "회원정보 수정");
		return "member_info.jsp";
	}

}
