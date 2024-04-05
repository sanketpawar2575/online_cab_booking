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
public class user_payment extends HttpServlet {

     Connection cn= null;
    Statement st=null;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       Database db=new Database();
        String result =db.Connectdb();
        System.out.println(result);
        
         PrintWriter out = resp.getWriter();
         
          
        String amount= req.getParameter("amount");
        String name= req.getParameter("name");
        String email= req.getParameter("email");
        String contact= req.getParameter("contact");
        String event= req.getParameter("submit");
        
        
        out.println(amount);
        out.println(name);
        out.println(email);
        out.println(contact);
        
        if(event.equals("card"))
        {
            if(amount.equals("")||name.equals("")||email.equals("")||contact.equals(""))
            {
                resp.setContentType("text/html");
                out.println("<script type=\"text/javascript\">");
                out.println("alert('some fields are empty !');");
                out.println("location='user_payment.jsp';");
                out.println("</script>");
            }
            else
            {
                
                try
                {
                String insert=db.Insert("insert into user_payment(Amount,Full_name,Email,contact_no) values('"+amount.toString()+"','"+name.toString()+"','"+email.toString()+"','"+contact.toString()+"')");
                out.println(insert);
                
                resp.setContentType("text/html");
                out.println("<script type=\"text/javascript\">");
                out.println("alert('"+insert+"');");
                out.println("location='user_payment.jsp';");
                out.println("</script>");
                }
                catch(Exception ex)
                {
                   resp.setContentType("text/html");
                out.println("<script type=\"text/javascript\">");
                out.println("alert('"+ex.toString()+"');");
                out.println("location='user_payment.jsp';");
                out.println("</script>"); 
                }
            }
        }
    }

}
  
