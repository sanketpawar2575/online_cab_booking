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
public class driver_login extends HttpServlet {

     Connection cn= null;
    Statement st=null;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       Database db=new Database();
        String result =db.Connectdb();
        
          PrintWriter out = resp.getWriter();
          HttpSession session=req.getSession();
         
          
        String username= req.getParameter("username");
        String password= req.getParameter("password");
        String event= req.getParameter("submit");
        
        out.println(username);
        out.println(password);
        
        if(event.equals("LogIn"))
        {
            if(username.equals("")||password.equals(""))
            {
                resp.setContentType("text/html");
                out.println("<script type=\"text/javascript\">");
                out.println("alert('some fields are empty !');");
                out.println("location='driver_login.jsp';");
                out.println("</script>");
            }
            else
            {
                try
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_cab_booking","root","root");
                    st=cn.createStatement();
                    
                    String sql="select * from driver_registration where UserId='"+username.toString()+"' and pass='"+password.toString()+"' ";
                    ResultSet rs=st.executeQuery(sql);
                    
                    if(rs.next())
                    {
                        session.setAttribute("driver_id",rs.getString("driver_id"));
                        session.setAttribute("full_name",rs.getString("full_name"));
                        
                        resp.sendRedirect("driver_confirmation.jsp");
                        
                    }
                    else
                    {
                        resp.setContentType("text/html");
                        out.println("<script type=\"text/javascript\">");
                        out.println("alert('Incorrent UserId and Password !');");
                        out.println("location='driver_login.jsp';");
                        out.println("</script>");
                    }
                   
                }
                catch(Exception ex)
                {
                    resp.setContentType("text/html");
                out.println("<script type=\"text/javascript\">");
                out.println("alert('"+ex.toString()+"');");
                out.println("location='driver_login.jsp';");
                out.println("</script>");
                }
            }
        }
         if(event.equals("Register"))
         {
             resp.sendRedirect("driver_registration.jsp");
         }
    }
}

