package com.test;

import java.io.IOException;
import java.net.URL;
import java.net.URLConnection;
import java.io.*;
import java.net.*;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class Oauth2callback {

	@RequestMapping(value = "/logout")
	public void logoutUser(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		resp.sendRedirect("new.html");
	}

	@RequestMapping(value = "/oauth2callback", method = RequestMethod.GET)
	public ModelAndView hello(@RequestParam("code") String authcode,
			HttpServletRequest req, HttpServletResponse resp)
			throws IOException, ParseException, ServletException {

		String param1 = "value1";
		String param2 = "value2";
		System.out.println(authcode);
		String query = String.format("param1=%s&param2=%s",
				URLEncoder.encode(param1, "UTF-8"),
				URLEncoder.encode(param2, "UTF-8"));
		String grant_type = "authorization_code";
		String clientId = "59844789152-30um53br0dp2fk3q3nk6g7re38bddnfr.apps.googleusercontent.com";
		String clientSecret = "xSr2_KXFSODiXtqQwEk3Ps3H";
		String redirect_url = "http://localhost:8888/oauth2callback";
		// String redirect_url =
		// "http://www.velu-1090.appspot.com/oauth2callback";
		URLConnection connection = new URL(
				"https://www.googleapis.com/oauth2/v3/token?client_id="
						+ clientId + "&client_secret=" + clientSecret
						+ "&redirect_uri=" + redirect_url + "&grant_type="
						+ grant_type + "&code=" + authcode).openConnection();
		connection.setDoOutput(true); // Triggers POST.
		// connection.setRequestProperty("Accept-Charset", "UTF-8");
		connection.setRequestProperty("Content-Type",
				"application/x-www-form-urlencoded;charset=");
		String charset = "UTF-8";
		try (OutputStream output = connection.getOutputStream()) {
			output.write(query.getBytes(charset));
		}

		InputStream response = connection.getInputStream();
		System.out.println(response);
		StringBuilder str = new StringBuilder();

		for (int c1 = response.read(); c1 != -1; c1 = response.read()) {
			char j = (char) c1;
			str.append((char) j);
			System.out.println(str);
		}
		System.out.println(str);
		String s = new String(str);
		JSONObject json = (JSONObject) new JSONParser().parse(s);
		String access_token = json.get("access_token").toString();
		System.out.println(json.get("access_token"));

		response.close();

		// for get user info
		URLConnection conn = new URL(
				"https://www.googleapis.com/oauth2/v3/userinfo?access_token="
						+ access_token).openConnection();
		conn.setDoOutput(true); // Triggers POST.
		// connection.setRequestProperty("Accept-Charset", "UTF-8");
		conn.setRequestProperty("Content-Type",
				"application/x-www-form-urlencoded;charset=");

		try (OutputStream output1 = conn.getOutputStream()) {
			output1.write(query.getBytes(charset));
		}
		StringBuilder str1 = new StringBuilder();
		InputStream res = conn.getInputStream();
		for (int c = res.read(); c != -1; c = res.read()) {
			char j = (char) c;
			str1.append((char) j);

		}
		String userInfo = new String(str1);
		System.out.println(str1);

		JSONObject j = (JSONObject) new JSONParser().parse(userInfo);
		String userName = (String) j.get("name");
		String email = (String) j.get("email");
		String pic = (String) j.get("picture");
		req.setAttribute("picture", pic);
		req.setAttribute("username", userName);
		req.setAttribute("email", email);
		RequestDispatcher rd = req.getRequestDispatcher("login.jsp");
		rd.forward(req, resp);

		return null;
	}
}
