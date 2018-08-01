package com.platform.service;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

public class AlertService {

	public static void htmlPrint(HttpServletResponse response, String message, String path) throws IOException {
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<script language='javascript'>");
		out.println("alert('" + message + "');");
		out.println("location.href = '" + path + "';"); 
		out.println("</script>"); 
		out.close();
	}
}
