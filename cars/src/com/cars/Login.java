package com.cars;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Login extends HttpServlet {

private static final long serialVersionUID = 1L;
@SuppressWarnings("all")
public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {


String email=req.getParameter("email");
String date=req.getParameter("date");
String issue=req.getParameter("issue");

ToStoreLogin store=new ToStoreLogin();
store.setdate(date);
store.setissue(issue);

PersistenceManager pm=PMF.get().getPersistenceManager();

ArrayList em=new ArrayList();
String queryStr = "SELECT FROM " + ToStoreRegister.class.getName();
Query q = pm.newQuery(queryStr);
List<ToStoreRegister> ToStoreLogins = (List<ToStoreRegister>) q.execute();
for (ToStoreRegister e : ToStoreLogins) {
	String name = e.getname();
	em.add(name);
	System.out.println(name);
}


if (!ToStoreLogins.isEmpty()) {
for (ToStoreRegister e : ToStoreLogins) {
String user_email = e.getemail();
em.add(user_email);
System.out.println(user_email);
}
if(!em.contains(email)) {
String Details = "The email address doesn't exixt";
req.setAttribute("Value1", Details);
System.out.println(Details);
RequestDispatcher rd = req.getRequestDispatcher("sports.jsp");
rd.forward(req, resp);
}
else
{
store.setemail(email);
ArrayList em2=new ArrayList();
String queryStr2 = "SELECT FROM " + ToStoreRegister.class.getName();
Query q2 = pm.newQuery(queryStr);
List<ToStoreRegister> ToStoreLogins2 = (List<ToStoreRegister>) q.execute();
for (ToStoreRegister e : ToStoreLogins2) {
	String name = e.getname();
	em.add(name);
	System.out.println(name);
String Details = "Login Successful";
req.setAttribute("Value1", Details);

}
try
{
pm.makePersistent(store);
}
finally
{
pm.close();
req.getRequestDispatcher("sports.jsp").include(req,resp);
}
}
}
}
}