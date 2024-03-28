<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>


<head>
    <title>Employee Portal - Hotel Management System</title>
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
    String room_number = request.getParameter("roomNumber");
    System.out.println("room_number: " + room_number);
    String hotel_address = request.getParameter("hotelAddress");
    System.out.println("hotel_address: " + hotel_address);
    String startDate = request.getParameter("startDate");
    System.out.println("from_date: " + startDate);
    String endDate = request.getParameter("endDate");
    System.out.println("to_date: " + endDate);
    String customer_id = request.getParameter("customerID");
    %>

    <div class="container">
        <div class="row" id="row">
            <div class="col-md-12">
                <form class="form-horizontal" name="employee-form" action="booking_create.jsp" method="POST">
                    <div class="form-group col-sm-3 mb-3">
                        <label for="room_number">Room Number</label>
                        <input type="text" readonly class="form-control" name="room_number" placeholder="room_number" value="<%=room_number%>">
                    </div>
                    <div class="form-group col-sm-3 mb-3">
                        <label for="hotel_address">Hotel Address</label>
                        <input type="text" readonly class="form-control" name="hotel_address" placeholder="Enter hotel_address"
                        value="<%=hotel_address%>">
                    </div>
                    <div class="form-group col-sm-3 mb-3">
                        <label for="from_date">from Date</label>
                        <input type="text" readonly class="form-control" name="from_date" placeholder="Enter from_date"
                        value="<%=startDate%>">
                    </div>
                    <div class="form-group col-sm-3 mb-3">
                        <label for="to_date">To Date</label>
                        <input type="text"  readonly class="form-control" name="to_date" placeholder="Enter to_date"
                        value="<%=endDate%>">

                    </div>
                    <div class="form-group col-sm-3 mb-3">
                        <label for="customer_id">Customer_id</label>
                        <input type="text" readonly class="form-control" name="customer_id" placeholder="Enter customer_id"
                        value="<%=customer_id%>">
                    </div>

                    <button type="submit" class="btn btn-primary btn-submit-custom">Confirm</button>
                </form>
            </div>
        </div>


</body>



</html>
