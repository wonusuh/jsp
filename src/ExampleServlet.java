
import java.io.FileInputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.CommandProcessor;
//import command.MemberResister;
//import command.MemberModify;
//import command.DoLogin;

/**
 * Servlet implementation class ExampleServlet
 */
@WebServlet("/ExampleServlet")
public class ExampleServlet extends HttpServlet implements CommandProcessor {
	private static final long serialVersionUID = 1L;
	private HashMap<String, Object> commandProcessorMap = new HashMap<>();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ExampleServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */

    public void init(ServletConfig config) throws ServletException {
    	FileInputStream fis = null;
    	Properties prop = new Properties();
    	try {
    		fis = new FileInputStream("D:\\suh\\workspace\\HelloJSP\\WebContent\\WEB-INF\\command.prop");
    		prop.load(fis);
    	} catch (Exception e) {
    	} finally {
    		if (fis != null) {
    			try {
    				fis.close();
    			} catch (IOException ex) {
    			}
    		}
    		Iterator<Object> iter = prop.keySet().iterator();
    		while (iter.hasNext()) {
    			String cmd = (String) iter.next();
    			String processorClassname = prop.getProperty(cmd);
    			try {
    				Class processorClass = Class.forName(processorClassname);
    				Object processorInstance = processorClass.newInstance();
    				commandProcessorMap.put(cmd, processorInstance);
    			} catch (Exception e) {
    				e.printStackTrace();
    			}
    		}
    	}
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String cmd = request.getParameter("cmd");
		CommandProcessor processor = (CommandProcessor) commandProcessorMap.get(cmd);
		String view = null;
		
//		if (cmd.equals("member_reg")) {
////			회원가입 로직 처리
//			processor = new MemberResister();
//		} else if (cmd.equals("member_mod")) {
////			회원정보수정 로직 처리
//			processor = new MemberModify();
//		} else if (cmd.equals("member_login")) {
////			로그인 로직 처리
//			processor = new DoLogin();
//		}
		
		view = processor.process(request, response);
		RequestDispatcher dis = request.getRequestDispatcher(view);
		dis.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) {
		return null;
	}

}
