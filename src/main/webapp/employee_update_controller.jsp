<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ page import="com.hotel.EmployeeManager" %>
<%@ page import="com.hotel.Employee" %>
<%@ page import="com.hotel.Message" %>
<%@ page import="java.util.ArrayList" %>

<%
    Integer employee_id = Integer.valueOf(request.getParameter("employee_id"));
    String first_name = request.getParameter("first_name");
    String last_name = request.getParameter("last_name");
    String email = request.getParameter("email");


    EmployeeManager employeeManager = new EmployeeManager();

    Employee employee = new Employee(employee_id, first_name, last_name, email);

    Message msg;

    try {
        String value = employeeManager.updateEmployee(employee);
        // if the value contains error/Error then this is an error message
        if (value.contains("Error") || value.contains("error")) msg = new Message("error", value);

        else msg = new Message("success", value);
    } catch (Exception e) {
        e.printStackTrace();
        msg = new Message("error", "Something went wrong!");
    }

    // create an arraylist of messages and append the new message
    ArrayList<Message> messages = new ArrayList<>();
    messages.add(msg);

    // set session attribute named messages to messages value
    session.setAttribute("messages", messages);
    // redirect to students page
    response.sendRedirect("employees.jsp");
%>