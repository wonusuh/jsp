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
public class MemberResister implements CommandProcessor {

	/**
	 * @param args
	 */

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) {
		// TODO Auto-generated method stub
		req.setAttribute("member_reg", "회원가입");
		return "member_reg.jsp";
	}

}
