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
import javax.servlet.http.HttpSession;

/**
 *
 * @author Shubham Patil
 */
public class driver_registration extends HttpServlet {

     Connection cn= null;
    Statement st=null;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       Database db=new Database();
        String result =db.Connectdb();
        System.out.println(result);
        
         PrintWriter out = resp.getWriter();
         HttpSession session=req.getSession();
         
          
        String name= req.getParameter("name");
        String mobile= req.getParameter("mobile");
        String address= req.getParameter("address");
        String email= req.getParameter("email");
        String lno= req.getParameter("lno");
        String adharno= req.getParameter("adharno");
        String userid= req.getParameter("userid");
        String password= req.getParameter("password");
        String image=req.getParameter("image");
        
        String event= req.getParameter("submit");
        
        out.println(name);
        out.println(mobile);
        out.println(address);
        out.println(email);
        out.println(lno);
        out.println(adharno);
        out.println(userid);
        out.println(password);
        out.println(image);
        
        if(event.equals("Register Now..."))
        {
            if(name.equals("")||mobile.equals("")||address.equals("")||email.equals("")||lno.equals("")||adharno.equals("")||userid.equals("")||password.equals(""))
            {
                resp.setContentType("text/html");
                out.println("<script type=\"text/javascript\">");
                out.println("alert('some fields are empty !');");
                out.println("location='driver_registration.jsp';");
                out.println("</script>");
            }
            else
            {
                try
                {
                    session.setAttribute("name", name);
                String insert=db.Insert("insert into driver_registration(full_name,Address,Email,license_no,Adhar_no,UserId,pass,mobile,image,status) values('"+name.toString()+"','"+address.toString()+"','"+email.toString()+"','"+lno.toString()+"','"+adharno.toString()+"','"+userid.toString()+"','"+password.toString()+"','"+mobile.toString()+"','"+image.toString()+"','Ideal')");
                out.println(insert);
                
                resp.setContentType("text/html");
                out.println("<script type=\"text/javascript\">");
                out.println("alert('"+insert+"');");
                out.println("location='driver_cab_details.jsp';");
                out.println("</script>");
                }
                catch(Exception ex)
                {
                     resp.setContentType("text/html");
                out.println("<script type=\"text/javascript\">");
                out.println("alert('"+ex.toString()+"');");
                out.println("location='driver_registration.jsp';");
                out.println("</script>");
                }
            }
        }
          
    }
}
