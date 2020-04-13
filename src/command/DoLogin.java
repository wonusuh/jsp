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
public class DoLogin implements CommandProcessor {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) {
		// TODO Auto-generated method stub
//		로그인과 관련된 비즈니스 로직 처리
		req.setAttribute("member_login", "로그인");
		return "member_login.jsp";
	}

	/**
	 * @param args
	 */

}
