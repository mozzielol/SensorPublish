package org.mozzie.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HellowWord extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException{
		PrintWriter out = resp.getWriter();
		out.println("<html>");
		out.println("<head>");
		out.println("<h1>Hello World</h1>");
		out.println("</head>");
		out.println("<body>");
		out.println("</body>");
		out.println("</html>");
		out.close();
	}
}
