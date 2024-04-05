/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Shubham Patil
 */
public class user_login extends HttpServlet {
 Connection cn= null;
    Statement st=null;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       Database db=new Database();
        String result =db.Connectdb();
        
        
         PrintWriter out = resp.getWriter();
         HttpSession session=req.getSession();
         
        String userid= req.getParameter("userid");
        String password= req.getParameter("password");
        String event= req.getParameter("submit");
        
        out.println(userid);
        out.println(password);
        
        if(event.equals("Log In"))
        {
            if(userid.equals("")||password.equals(""))
            {
                resp.setContentType("text/html");
                out.println("<script type=\"text/javascript\">");
                out.println("alert('some fields are empty !');");
                out.println("location='user_login.jsp';");
                out.println("</script>");
            }
            else
            {
                try
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_cab_booking","root","root");
                    st=cn.createStatement();
                    
                    String sql="select * from user_registration where Email='"+userid.toString()+"' and pass='"+password.toString()+"' ";
                    ResultSet rs=st.executeQuery(sql);
                    
                    if(rs.next())
                    {
                        
                        session.setAttribute("user_id",rs.getString("id"));
                        
                        resp.sendRedirect("user_cab_booking.jsp");
                        
                    }
                    else
                    {
                        resp.setContentType("text/html");
                        out.println("<script type=\"text/javascript\">");
                        out.println("alert('Incorrent UserId and Password !');");
                        out.println("location='user_login.jsp';");
                        out.println("</script>");
                    }
                   
                }
                catch(Exception ex)
                {
                    resp.setContentType("text/html");
                out.println("<script type=\"text/javascript\">");
                out.println("alert('"+ex.toString()+"');");
                out.println("location='user_login.jsp';");
                out.println("</script>");
                }
            }
        }
        if(event.equals("Create a Account"))
        {
            resp.sendRedirect("user_registration.jsp");
            
        }
        
        
    }
}
