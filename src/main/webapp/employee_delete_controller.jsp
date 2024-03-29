<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ page import="com.hotel.EmployeeManager" %>
<%@ page import="com.hotel.Employee" %>
<%@ page import="com.hotel.Message" %>
<%@ page import="java.util.ArrayList" %>

<%
    // get the id that was sent
    Integer employee_id = Integer.valueOf(request.getParameter("employee_id"));



    // create a message object
    Message msg;
    boolean error = false;
    // try to delete a hotel
    try {
        EmployeeManager employeeManager = new EmployeeManager();
        // save the message returned from trying to delete a grade
        String value = employeeManager.deleteEmployee(employee_id);
        System.out.println(value);
        // in case the value contains error/Error then this message is an error
        if (value.contains("Error") || value.contains("error")) {
            msg = new Message("error", value);
            error = true;
        } else {
            msg = new Message("success", value);
        }

    } catch (Exception e) {
        e.printStackTrace();
        msg = new Message("error", "Something went wrong!");
    }

    // append the message in a messages arraylist
    ArrayList<Message> messages = new ArrayList<>();
    messages.add(msg);

    // set session attribute named messages with the messages arraylist
    session.setAttribute("messages", messages);

    if (error) {
        out.println(msg.value);

    } else {
        response.sendRedirect("employees.jsp");
    }

%>