package com.cars;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Ajax extends HttpServlet
{
	private static final long serialVersionUID = 1L;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		// TODO Auto-generated method stub
		String userInput = request.getParameter("userInput");
		if(userInput !=null)
		{
			response.setContentType("text/html");
			response.getWriter().write(generateJSONData(userInput));
		}
	}
	public String generateJSONData(String userInput)
	{
		
		StringBuffer returnData=null;

		   if(userInput.endsWith("lor") ) 
	{
		System.out.println(userInput);
		returnData = new StringBuffer("{\"topic\":{");
		returnData.append("\"name\":\"Bangalore\",");
		returnData.append("\"data\":[");
		returnData.append("{\"name\":\"Mysore\"},");
		returnData.append("{\"name\":\"Electronic city\"},");
		returnData.append("{\"name\":\"white field\"}]");
		returnData.append("}}");	
	}
		   else if (userInput.startsWith("ba"))	
			{
			System.out.println(userInput);
				returnData = new StringBuffer("{\"topic\":{");
				returnData.append("\"name\":\"Bangalore\",");
				returnData.append("\"data\":[");
				returnData.append("{\"name\":\"besant nagar\"},");
				returnData.append("{\"name\":\"boat house\"}],");
				returnData.append("}}");
				}
		   
		   
		   
		   else if (userInput.endsWith("chenna"))	
	{
		System.out.println(userInput);
		returnData = new StringBuffer("{\"topic\":{");
		returnData.append("\"name\":\"Chennai\",");
		returnData.append("\"data\":[");
		returnData.append("{\"name\":\"Adayar\"},");
		returnData.append("{\"name\":\"Chepauk\"},");
		returnData.append("{\"name\":\"besant nagar\"},");
		returnData.append("{\"name\":\"boat house\"},");
		returnData.append("{\"name\":\"Tharamani\"}],");
		returnData.append("}}");
	}
		   else if (userInput.startsWith("ch"))	
		{
		System.out.println(userInput);
			returnData = new StringBuffer("{\"topic\":{");
			returnData.append("\"name\":\"chennai\",");
			returnData.append("\"data\":[");
			returnData.append("{\"name\":\"chidambaram\"},");
			returnData.append("{\"name\":\"chengalpet\"}],");
			returnData.append("}}");
			}
		   else if (userInput.startsWith("pon"))	
			{
			System.out.println(userInput);
				returnData = new StringBuffer("{\"topic\":{");
				returnData.append("\"name\":\"Pondicherry\",");
				returnData.append("\"data\":[");
				returnData.append("{\"name\":\"Lawspet\"},");
				returnData.append("{\"name\":\"Villianur\"}],");
				returnData.append("}}");
				}
		
			else
			{
				returnData = new StringBuffer("{\"topic\":{");
				returnData.append("\"name\":\"Area:"+userInput+"\",");
				returnData.append("\"data\":[");
				returnData.append("{\"name\":\"not available\"}]");
				returnData.append("}}");
			}
			return returnData.toString();
		
	}
	
} 
