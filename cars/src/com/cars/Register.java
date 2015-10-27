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

public class Register extends HttpServlet {

private static final long serialVersionUID = 1L;

@SuppressWarnings("all")
public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {

String name=req.getParameter("name");
String email=req.getParameter("email");
String detail=req.getParameter("detail");
String number=req.getParameter("number");
String date=req.getParameter("date");
String issue=req.getParameter("issue");

ToStoreRegister store=new ToStoreRegister();
store.setname(name);
store.setdetail(detail);
store.setnumber(number);
store.setdate(date);
store.setissue(issue);

PersistenceManager pm=PMF.get().getPersistenceManager();

ArrayList em=new ArrayList();
String queryStr = "SELECT FROM " + ToStoreRegister.class.getName();
Query q = pm.newQuery(queryStr);
@SuppressWarnings("all")
List<ToStoreRegister> ToStoreRegisters = (List<ToStoreRegister>) q.execute();


if (!ToStoreRegisters.isEmpty()) {
for (ToStoreRegister e : ToStoreRegisters) {
String user_email = e.getemail();
em.add(user_email);
System.out.println(user_email);
}
if(em.contains(email)) {
String Details = "The email address already present";
req.setAttribute("Value1", Details);
System.out.println(Details);
RequestDispatcher rd = req.getRequestDispatcher("sports.jsp");
rd.forward(req, resp);
}
else
{
store.setemail(email);
String Details = "Registration Successful";
req.setAttribute("Value1", Details);
req.setAttribute("name", name);
try
{
pm.makePersistent(store);
}
finally
{
pm.close();
RequestDispatcher rd = req.getRequestDispatcher("sports.jsp");
rd.forward(req, resp);
}
}
}
}
}