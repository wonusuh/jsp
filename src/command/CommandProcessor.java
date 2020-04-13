/**
 * 
 */
package command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;;

/**
 * @author YONSAI
 *
 */
public interface CommandProcessor {
	public String process(HttpServletRequest req, HttpServletResponse res);

}
