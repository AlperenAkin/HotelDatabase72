<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>


<head>
    <title>Room</title>
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
        String hotelAddress = request.getParameter("hotelAddress");
        System.out.println("hotelAddress: " + hotelAddress);
        String roomNumber = request.getParameter("roomNumber");
        System.out.println("roomNumber: " + roomNumber);
        String price = request.getParameter("price");
        System.out.println("price: " + price);
        String capacity = request.getParameter("capacity");
        System.out.println("capacity: " + capacity);
        String view = request.getParameter("view");
        System.out.println("view: " + view);
        String extendable = request.getParameter("extendable");
        System.out.println("extendable: " + extendable);


    %>

    <div class="container">
        <div class="row" id="row">
            <div class="col-md-12">
                <form class="form-horizontal" name="room-update-form" action="room_update_controller.jsp" method="POST">
                    <div class="form-group col-sm-3 mb-3">
                        <label for="hotelAddress">Hotel Address</label>
                        <input type="text" readonly class="form-control" name="hotelAddress" placeholder="hotelAddress" value="<%=hotelAddress%>">
                    </div>
                    <div class="form-group col-sm-3 mb-3">
                        <label for="roomNumber">Room Number</label>
                        <input type="text" readonly class="form-control" name="roomNumber" placeholder="roomNumber" value="<%=roomNumber%>">
                    </div>
                    <div class="form-group col-sm-3 mb-3">
                        <label for="price">Price</label>
                        <input type="text" class="form-control" name="price" placeholder="price" value="<%=price%>">
                    </div>
                    <div class="form-group col-sm-3 mb-3">
                        <label for="capacity">Capacity</label>
                        <input type="text" class="form-control" name="capacity" placeholder="capacity" value="<%=capacity%>">
                    </div>
                    <div class="form-group col-sm-3 mb-3">
                        <label for="view">View</label>
                        <input type="text" class="form-control" name="view" placeholder="view" value="<%=view%>">
                    </div>
                    <div class="form-group col-sm-3 mb-3">
                        <label for="extendable">Extendable</label>
                        <input type="text" class="form-control" name="extendable" placeholder="extendable" value="<%=extendable%>">
                    </div>


                    <button type="submit" class="btn btn-primary btn-submit-custom">Update</button>

                </form>
            </div>
        </div>


</body>



</html>

