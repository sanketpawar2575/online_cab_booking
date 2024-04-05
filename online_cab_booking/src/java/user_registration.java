/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Shubham Patil
 */
public class user_registration extends HttpServlet {
    Connection cn= null;
    Statement st=null;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       Database db=new Database();
        String result =db.Connectdb();
        System.out.println(result);
        
          PrintWriter out = resp.getWriter();
          
        String name= req.getParameter("name");
        String address= req.getParameter("address");
        String email= req.getParameter("email");
        String mobile= req.getParameter("mobile");
        String password= req.getParameter("password");
        String cpassword= req.getParameter("cpassword");
        String birth= req.getParameter("birth");
        String radio= req.getParameter("radio");
        String event= req.getParameter("submit");
        
        
        
        out.println(name);
        out.println(address);
        out.println(email);
        out.println(mobile);
        out.println(password);
        out.println(cpassword);
        out.println(birth);
        out.println(radio);
        
        if(event.equals("Register"))
        {
            if(name.equals("")||address.equals("")||email.equals("")||mobile.equals("")||password.equals("")||cpassword.equals("")||birth.equals("")||radio.equals(""))
            {
                resp.setContentType("text/html");
                out.println("<script type=\"text/javascript\">");
                out.println("alert('some fields are empty !');");
                out.println("location='user_registration.jsp';");
                out.println("</script>");
            }
            else
            {
                try
                {
                String insert=db.Insert("insert into user_registration(full_name,Address,Email,mobile_no,pass,cpass,birth_date,gender) values('"+name.toString()+"','"+address.toString()+"','"+email.toString()+"','"+mobile.toString()+"','"+password.toString()+"','"+cpassword.toString()+"','"+birth.toString()+"','"+radio.toString()+"')");
                out.println(insert);
                
                resp.setContentType("text/html");
                out.println("<script type=\"text/javascript\">");
                out.println("alert('"+insert+"');");
                out.println("location='user_login.jsp';");
                out.println("</script>");
                }
                catch(Exception ex)
                {
                     resp.setContentType("text/html");
                out.println("<script type=\"text/javascript\">");
                out.println("alert('"+ex.toString()+"');");
                out.println("location='user_registration.jsp';");
                out.println("</script>");
                }
            }
        }
    }
    
}

   

    
    
     
