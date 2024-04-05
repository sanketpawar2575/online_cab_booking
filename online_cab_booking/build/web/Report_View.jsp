<%@page import="java.lang.String"%>
<%@page import="java.util.Map"%>
<%@page import="net.sf.jasperreports.engine.JasperRunManager"%>
<%@page import="net.sf.jasperreports.engine.DefaultJasperReportsContext"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page import="net.sf.jasperreports.engine.*" %>
<%@ page import="net.sf.jasperreports.engine.export.*" %>
<%@ page import="net.sf.jasperreports.engine.util.*" %>
<%@ page import="java.util.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
       
       String event=request.getParameter("submit");
       if(event!=null)
             {
           if(event.equals("completed_journey"))
                           {
            Connection cn = null;
            try {
                Class.forName("com.mysql.jdbc.Driver");
       
                  cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_cab_booking","root","root");

          
            } catch (Exception ex) {    
                ex.printStackTrace();
            }
            File reportFile = new File(application.getRealPath("//Report//Complete_journey.jasper"));//your report_name.jasper file
            Map parameters = new HashMap();
            byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), null, cn);

            response.setContentType("application/pdf"); 
            response.setContentLength(bytes.length);
            ServletOutputStream outStream = response.getOutputStream();
            outStream.write(bytes, 0, bytes.length);
            outStream.flush();
            outStream.close();
                       }
           
             if(event.equals("pending journey"))
                           {
            Connection cn = null;
            try {
                Class.forName("com.mysql.jdbc.Driver");
      
                 cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_cab_booking","root","root");
          
            } catch (Exception ex) {
                ex.printStackTrace();
            }
            File reportFile = new File(application.getRealPath("Report\\Pending_Journeys.jasper"));//your report_name.jasper file
            Map parameters = new HashMap();
            byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), null, cn);

            response.setContentType("application/pdf"); 
            response.setContentLength(bytes.length);
            ServletOutputStream outStream = response.getOutputStream();
            outStream.write(bytes, 0, bytes.length);
            outStream.flush();
            outStream.close();
                       }
           
           if(event.equals("pending journey"))
                           {
            Connection cn = null;
            try {
                Class.forName("com.mysql.jdbc.Driver");
        
                 cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_cab_booking","root","root");
          
            } catch (Exception ex) {
                ex.printStackTrace();
            }
            File reportFile = new File(application.getRealPath("Report\\Pending_Journeys.jasper"));//your report_name.jasper file
            Map parameters = new HashMap();
            byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), null, cn);

            response.setContentType("application/pdf"); 
            response.setContentLength(bytes.length);
            ServletOutputStream outStream = response.getOutputStream();
            outStream.write(bytes, 0, bytes.length);
            outStream.flush();
            outStream.close();
                       }
           
            if(event.equals("Driver List"))
                           {
            Connection cn = null;
            try {
                Class.forName("com.mysql.jdbc.Driver");
       cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_cab_booking","root","root");
          
            } catch (Exception ex) {
                ex.printStackTrace();
            }
            File reportFile = new File(application.getRealPath("\\Report\\Drives_List_Report.jasper"));//your report_name.jasper file
            Map parameters = new HashMap();
            byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), null, cn);

            response.setContentType("application/pdf"); 
            response.setContentLength(bytes.length);
            ServletOutputStream outStream = response.getOutputStream();
            outStream.write(bytes, 0, bytes.length);
            outStream.flush();
            outStream.close();
                       }
           
           if(event.equals("User_List"))
                           {
            Connection cn = null;
            try {
                Class.forName("com.mysql.jdbc.Driver");
      
                cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_cab_booking","root","root");
          
            } catch (Exception ex) {
                ex.printStackTrace();
            }
            File reportFile = new File(application.getRealPath("\\Report\\User_List_Report.jasper"));//your report_name.jasper file
            Map parameters = new HashMap();
            byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), null, cn);

            response.setContentType("application/pdf"); 
            response.setContentLength(bytes.length);
            ServletOutputStream outStream = response.getOutputStream();
            outStream.write(bytes, 0, bytes.length);
            outStream.flush();
            outStream.close();
                       }
          
           if(event.equals("Payment Reset"))
               
                           {
              String date1=request.getParameter("Datewise_Orders");
            Connection cn = null;
            try {
                Class.forName("com.mysql.jdbc.Driver");
      
                cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_cab_booking","root","root");  
          
            } catch (Exception ex) {
                ex.printStackTrace();
            }
            File reportFile = new File(application.getRealPath("Report\\User_Payment_Report.jasper"));//your report_name.jasper file
            HashMap parameters = new HashMap();
            parameters.put("Date", date1);
            byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, cn);

            response.setContentType("application/pdf"); 
            response.setContentLength(bytes.length);
            ServletOutputStream outStream = response.getOutputStream();
            outStream.write(bytes, 0, bytes.length);
            outStream.flush();
            outStream.close();
                       }
           
           if(event.equals("Datewise Orders"))
                           {
                String date1=request.getParameter("Datewise_Orders");
            Connection cn = null;
            try {
                Class.forName("com.mysql.jdbc.Driver");
        cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_shopping","root","root");
          
            } catch (Exception ex) {
                ex.printStackTrace();
            }
            File reportFile = new File(application.getRealPath("Report\\Date wise orders.jasper"));//your report_name.jasper file
            HashMap parameters = new HashMap();
            parameters.put("Date", date1);
            byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, cn);

            response.setContentType("application/pdf"); 
            response.setContentLength(bytes.length);
            ServletOutputStream outStream = response.getOutputStream();
            outStream.write(bytes, 0, bytes.length);
            outStream.flush();
            outStream.close();
                       }
           
           
           
           
           if(event.equals("Print payment Reset"))
                           {
                String id=request.getParameter("id");
                
                
            Connection cn = null;
            try {
                Class.forName("com.mysql.jdbc.Driver");
        cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_cab_booking","root","root");
          
            } catch (Exception ex) {
                ex.printStackTrace();
            }
            File reportFile = new File(application.getRealPath("Report\\payment_print1.jasper"));//your report_name.jasper file
            HashMap parameters = new HashMap();
            parameters.put("id", id);
            byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, cn);

            response.setContentType("application/pdf"); 
            response.setContentLength(bytes.length);
            ServletOutputStream outStream = response.getOutputStream();
            outStream.write(bytes, 0, bytes.length);
            outStream.flush();
            outStream.close();
                       }
           
           
           
           
                     }
        %>
    </body>
</html>