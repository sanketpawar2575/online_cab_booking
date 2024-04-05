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
public class user_cab_booking extends HttpServlet {

     Connection cn= null;
    Statement st=null;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       Database db=new Database();
        String result =db.Connectdb();
        System.out.println(result);
         PrintWriter out = resp.getWriter();
         HttpSession session=req.getSession();
         
         String user_id=session.getAttribute("user_id").toString();
          String pradio=req.getParameter("pradio");
        String name= req.getParameter("name");
        String ppoint= req.getParameter("ppoint");
        String dpoint= req.getParameter("dpoint");
        String contact= req.getParameter("contact");
        String km= req.getParameter("km");
        String noofpassenger= req.getParameter("noofpassenger");
        String time= req.getParameter("time");
        String date= req.getParameter("date");
        String pincode= req.getParameter("pincode");
        String driver_name = req.getParameter("driver_name");
        String event =req.getParameter("submit");
        String amount=req.getParameter("amount");
        
        String full_name = "";
           String Address = "";
           String Email = "";
           String license_no = "";
           String Adhar_no = "";
           String UserId = "";
           String mobile="";
           String cab_no="";
           String cab_type="";
           
           
      
        
                
       
        out.println(name);
        out.println(ppoint);
        out.println(dpoint);
        out.println(contact);
        out.println(noofpassenger);
        out.println(km);
        out.println(time);
        out.println(date);
         out.println(pradio);
        
        if(event.equals("Book"))
        {
            if(pradio.equals("")|| name.equals("")||ppoint.equals("")||dpoint.equals("")||contact.equals("")||noofpassenger.equals("")||km.equals("")||time.equals("")||date.equals("")||pincode.equals(""))
            {
                resp.setContentType("text/html");
                out.println("<script type=\"text/javascript\">");
                out.println("alert('some fields are empty !');");
                out.println("location='user_cab_booking.jsp';");
                out.println("</script>");
            }
            else
            {
                
                
                
                try
                {
                   
                    Class.forName("com.mysql.jdbc.Driver");
                    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_cab_booking","root","root");
                    st=cn.createStatement();
                    //String sql= "select * from user_cab_booking where status='Pending' ";
                    //String sql = "select * from user_cab_booking where status="Completef";
                    String sql="select * from driver_registration where full_name = '"+driver_name.toString()+"'";
                    ResultSet rs=st.executeQuery(sql);
        
                    
                    while(rs.next())
                    {
                        full_name = rs.getString("full_name"); 
                        mobile=rs.getString("mobile");
                        
                        
                    }
                    
                    String sql1="select * from driver_cab_details where driver_name = '"+driver_name.toString()+"'";
                    ResultSet rs1=st.executeQuery(sql1);
        
                    
                    while(rs1.next())
                    {
                        cab_no = rs1.getString("cab_no"); 
                        cab_type=rs1.getString("cab_type");
                        
                        
                    }
                    
                    session.setAttribute("user_id",user_id);
                String insert=db.Insert("insert into user_cab_booking(full_name,contact_no,pickup_point,drop_point,kilo_meter,No_of_passenger,booking_date,booking_time,pakage,pincode,user_id,driver_name,driver_contact,cab_no,cab_type,status,amount) values('"+name.toString()+"','"+contact.toString()+"','"+ppoint.toString()+"','"+dpoint.toString()+"','"+km.toString()+"','"+noofpassenger.toString()+"','"+date.toString()+"','"+time.toString()+"','"+pradio.toString()+"','"+pincode.toString()+"','"+user_id.toString()+"', '"+driver_name.toString()+"','"+mobile.toString()+"', '"+cab_no.toString()+"', '"+cab_type.toString()+"','Pending','"+amount+"')");
                out.println(insert);
                
                resp.setContentType("text/html");
                out.println("<script type=\"text/javascript\">");
                out.println("alert('"+insert+"');");
                out.println("location='user_cab_booking.jsp';");
                out.println("</script>");
                }
                catch(Exception ex)
                {
                      resp.setContentType("text/html");
                out.println("<script type=\"text/javascript\">");
                out.println("alert('"+ex.toString()+"');");
                out.println("location='user_cab_booking.jsp';");
                out.println("</script>");
                }
                
            }
        }
    }
}
