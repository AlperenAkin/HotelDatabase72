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


    <div class="container">
        <div class="row" id="row">
            <div class="col-md-12">
                <form class="form-horizontal" name="hotel-creation-form" action="hotel_create_controller.jsp" method="POST">
                    <div class="form-group col-sm-3 mb-3">
                        <label for="hotel_ADDRESS">Hotel Address</label>
                        <input type="text" class="form-control" name="hotel_address" placeholder="Enter hotel_address">

                    </div>
                    </select>
                        <select name="Stars">
                            <option value="">Select Hotel Stars</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                    </select>
                    <div class="form-group col-sm-3 mb-3">
                        <label for="contact_email">Contact Email</label>
                        <input type="text" class="form-control" name="contact_email" placeholder="Enter contact_email">
                    </div>
                    <div class="form-group col-sm-3 mb-3">
                        <label for="num_rooms">Number of Rooms</label>
                        <input type="text" class="form-control" name="num_rooms" placeholder="Enter num_rooms">

                    </div>
                     </select>
                        <select name="hotelChain">
                            <option value="">Select Hotel Chain</option>
                            <option value="Maple Leaf Hotels">Maple Leaf Hotels</option>
                            <option value="Northern Lights Resorts">Northern Lights Resorts</option>
                            <option value="Rocky Mountain Lodges">Rocky Mountain Lodges</option>
                            <option value="Pacific Coast Inns">Pacific Coast Inns</option>
                            <option value="French Charm Hotels">French Charm Hotels</option>
                        </select>

                    <button type="submit" class="btn btn-primary btn-submit-custom">Confirm</button>
                </form>
            </div>
        </div>


</body>



</html>
