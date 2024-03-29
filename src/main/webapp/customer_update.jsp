<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>


<head>
    <title>Customer Portal - Hotel Management System</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet">
    <style>
            body {
                font-family: 'Roboto', sans-serif;
                background-color: #f7f7f7;
                margin: 0;
                padding: 0;
                display: flex;
                flex-direction: column;
                min-height: 100vh;
            }
            .header {
                background-color: #00695c;
                color: white;
                padding: 20px;
                text-align: center;
            }
            .main-content {
                flex: 1;
                padding: 20px;
                text-align: center;
            }
            .footer {
                background-color: #00695c;
                color: white;
                text-align: center;
                padding: 10px;
                position: relative;
                bottom: 0;
                width: 100%;
            }
            form {
                margin-top: 20px;
            }
            input, select {
                padding: 10px;
                margin: 10px;
                border-radius: 5px;
                border: 1px solid #ddd;
                font-size: 16px;
            }
            input[type="submit"] {
                background-color: #009688;
                color: white;
                cursor: pointer;
            }
            input[type="submit"]:hover {
                background-color: #00796b;
            }
        </style>
</head>

</html>

<body>

    <%
        String customer_id = request.getParameter("customer_id");
        String first_name = request.getParameter("first_name");
        String last_name = request.getParameter("last_name");
        String email = request.getParameter("email");
        String date_registered = request.getParameter("date_registered");



        %>


    <div class="container">
        <div class="row" id="row">
            <div class="col-md-12">
                <form class="form-horizontal" name="hotel-creation-form" action="employee_update_controller.jsp" method="POST">

                    <div class="form-group col-sm-3 mb-3">
                        <label for="customer_id">CustomerID</label>
                        <input type="text" readonly class="form-control" name="customer_id" placeholder="customerid" value="<%=customer_id%>">
                    </div>

                    <div class="form-group col-sm-3 mb-3">
                        <label for="first_name">First Name</label>
                        <input type="text" class="form-control" name="first_name" placeholder="Enter first_name"
                        value="<%=first_name%>">

                    </div>

                    <div class="form-group col-sm-3 mb-3">
                        <label for="last_name">Last Name</label>
                        <input type="text" class="form-control" name="last_name" placeholder="Enter last_name"
                        value="<%=last_name%>">

                    </div>

                    <div class="form-group col-sm-3 mb-3">
                        <label for="email">Email</label>
                        <input type="text" class="form-control" name="email" placeholder="Enter email"
                        value="<%=first_name%>">
                    </div>
                    <div class="form-group col-sm-3 mb-3">
                        <label for="date_registered">Date Registered</label>
                        <input type="date" class="form-control" name="date_registered" placeholder="Enter date"
                        value="<%=first_name%>">

                    </div>



                    <button type="submit" class="btn btn-primary btn-submit-custom">Confirm</button>
                </form>
            </div>
        </div>


</body>



</html>
