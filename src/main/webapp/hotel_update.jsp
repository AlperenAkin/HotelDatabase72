<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>


<head>
    <title>Hotel</title>
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
    String hotelStars = request.getParameter("hotelStars");
    System.out.println("stars: " + hotelStars);
    String hotelContactEmail = request.getParameter("hotelContactEmail");
    System.out.println("hotelContactEmail: " + hotelContactEmail);
    String hotelNumRooms = request.getParameter("hotelNumRooms");
    System.out.println("hotelNumRooms: " + hotelNumRooms);
    String hotelChainName = request.getParameter("hotelChainName");
    System.out.println("hotelChainName: " + hotelChainName);


    %>

    <div class="container">
        <div class="row" id="row">
            <div class="col-md-12">
                <form class="form-horizontal" name="hotelupdate-form" action="hotel_update_controller.jsp" method="POST">
                    <div class="form-group col-sm-3 mb-3">
                        <label for="hotelAddress">Hotel Address</label>
                        <input type="text" readonly class="form-control" name="hotelAddress" placeholder="hotelAddress" value="<%=hotelAddress%>">
                    </div>
                    <div class="form-group col-sm-3 mb-3">
                        <label for="hotelStars">Hotel Stars</label>
                        <input type="text" class="form-control" name="hotelStars" placeholder="hotelStars" value="<%=hotelStars%>">
                    </div>
                    <div class="form-group col-sm-3 mb-3">
                        <label for="hotelContactEmail">Hotel Contact Email</label>
                        <input type="text" class="form-control" name="hotelContactEmail" placeholder="hotelContactEmail" value="<%=hotelContactEmail%>">
                    </div>
                    <div class="form-group col-sm-3 mb-3">
                        <label for="hotelNumRooms">Hotel Number of Rooms</label>
                        <input type="text" class="form-control" name="hotelNumRooms" placeholder="hotelNumRooms" value="<%=hotelNumRooms%>">
                    </div>
                    <div class="form-group col-sm-3 mb-3">
                        <label for="hotelChainName">Hotel Chain Name</label>
                        <input type="text" class="form-control" name="hotelChainName" placeholder="hotelChainName" value="<%=hotelChainName%>">
                    </div>


                    <button type="submit" class="btn btn-primary btn-submit-custom">Update</button>

                </form>
            </div>
        </div>


</body>



</html>

