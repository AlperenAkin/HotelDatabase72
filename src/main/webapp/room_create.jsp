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
                <form class="form-horizontal" name="room-creation-form" action="room_create_controller.jsp" method="POST">

                    </select>
                        <select name="address">
                            <option value="">Select Room Hotel Address</option>

                            <option value="1">-----MAPLE LEAFS HOTELS------</option>
                            <option value="1 Maple Lane, Toronto, ON">1 Maple Lane, Toronto, ON</option>
                            <option value="200 Mountain View, Calgary, AB">200 Mountain View, Calgary, AB</option>
                            <option value="555 Seaside Blvd, Vancouver, BC">555 Seaside Blvd, Vancouver, BC</option>
                            <option value="1010 Northern Lights Ave, Yellowknife, NT">1010 Northern Lights Ave, Yellowknife, NT</option>
                            <option value="768 East Coast Rd, Halifax, NS">768 East Coast Rd, Halifax, NS</option>
                            <option value="909 Maple Street, Ottawa, ON">909 Maple Street, Ottawa, ON</option>
                            <option value="1010 Maple Avenue, Winnipeg, MB">1010 Maple Avenue, Winnipeg, MB</option>
                            <option value="1111 Maple Road, Regina, SK">1111 Maple Road, Regina, SK</option>


                            <option value="1">-----NORTHERN LIGHTS RESORTS------</option>
                            <option value="101 Aurora Street, Whitehorse, YT">101 Aurora Street, Whitehorse, YT</option>
                            <option value="202 Polar Road, Yellowknife, NT">202 Polar Road, Yellowknife, NT</option>
                            <option value="303 Iceberg Lane, Iqaluit, NU">303 Iceberg Lane, Iqaluit, NU</option>
                            <option value="404 Northern Ave, Edmonton, AB">404 Northern Ave, Edmonton, AB</option>
                            <option value="505 Tundra Trail, Churchill, MB">505 Tundra Trail, Churchill, MB</option>
                            <option value="606 Arctic View, Fort McMurray, AB">606 Arctic View, Fort McMurray, AB</option>
                            <option value="707 Polar Express, Labrador City, NL">707 Polar Express, Labrador City, NL</option>
                            <option value="808 Northern Edge, Thompson, MB">808 Northern Edge, Thompson, MB</option>

                            <option value="1">-----ROCKY MOUNTAIN LODGES------</option>
                            <option value="101 Peak View, Banff, AB">101 Peak View, Banff, AB</option>
                            <option value="202 Summit Drive, Jasper, AB">202 Summit Drive, Jasper, AB</option>
                            <option value="303 Ridge Road, Canmore, AB">303 Ridge Road, Canmore, AB</option>
                            <option value="404 Mountain Trail, Revelstoke, BC">404 Mountain Trail, Revelstoke, BCN</option>
                            <option value="505 Forest Parkway, Whistler, BC">505 Forest Parkway, Whistler, BC</option>
                            <option value="909 Valley Road, Kananaskis, AB">909 Valley Road, Kananaskis, AB</option>
                            <option value="1010 Highland Ave, Fernie, BC">1010 Highland Ave, Fernie, BC</option>
                            <option value="1111 Mountain View, Kimberley, BC">1111 Mountain View, Kimberley, BC</option>

                            <option value="1">-----PACIFIC COAST INNS------</option>
                            <option value="101 Ocean Drive, Victoria, BC">101 Ocean Drive, Victoria, BC</option>
                            <option value="202 Seaside Blvd, Tofino, BC">202 Seaside Blvd, Tofino, BC</option>
                            <option value="303 Coastal Road, Prince Rupert, BC">303 Coastal Road, Prince Rupert, BC</option>
                            <option value="404 Beachfront Ave, Nanaimo, BC">404 Beachfront Ave, Nanaimo, BC</option>
                            <option value="505 Harbour Lane, Vancouver, BC">505 Harbour Lane, Vancouver, BC</option>
                            <option value="606 Harbor View, Sidney, BC">606 Harbor View, Sidney, BC</option>
                            <option value="707 Oceanfront Walk, Powell River, BC">707 Oceanfront Walk, Powell River, BC</option>
                            <option value="808 Seashore Drive, Port Hardy, BC">808 Seashore Drive, Port Hardy, BC</option>

                            <option value="1">-----FRENCH CHARM HOTELS------</option>
                            <option value="101 Rue de la Montagne, Montreal, QC">101 Rue de la Montagne, Montreal, QC</option>
                            <option value="202 Rue Saint-Jean, Quebec City, QC">202 Rue Saint-Jean, Quebec City, QC</option>
                            <option value="303 Rue Saint-Paul, Trois-Rivières, QC">303 Rue Saint-Paul, Trois-Rivières, QC</option>
                            <option value="404 Boulevard Charest, Sherbrooke, QC">404 Boulevard Charest, Sherbrooke, QC</option>
                            <option value="505 Rue King Ouest, Gatineau, QC">505 Rue King Ouest, Gatineau, QC</option>
                            <option value="606 Rue Principale, Sainte-Anne-de-Beaupré, QC">606 Rue Principale, Sainte-Anne-de-Beaupré, QC</option>
                            <option value="707 Boulevard René-Lévesque, Montreal, QC">707 Boulevard René-Lévesque, Montreal, QC</option>
                            <option value="808 Chemin du Roy, Quebec City, QC">808 Chemin du Roy, Quebec City, QC</option>




                    </select>

                    <div class="form-group col-sm-3 mb-3">
                        <label for="roomNumber">Room Number</label>
                        <input type="text" class="form-control" name="roomNumber" placeholder="Enter roomNumber">
                    </div>

                    <div class="form-group col-sm-3 mb-3">
                        <label for="price">Price</label>
                        <input type="text" class="form-control" name="price" placeholder="Enter price">
                    </div>

                    </select>
                        <select name="capacity">
                            <option value="">Select Capacity</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                            <option value="6">6</option>
                            <option value="7">7</option>

                    </select>

                     </select>
                        <select name="view">
                            <option value="">Select Hotel View</option>
                            <option value="Mountain View">Mountain View</option>
                            <option value="Forest View">Forest View</option>
                            <option value="Lake View">Lake View</option>
                            <option value="City View">City View</option>
                            <option value="River View">River View</option>
                            <option value="Park View">Park View</option>
                    </select>

                    </select>
                        <select name="extendable">
                            <option value="">Select extendability</option>
                            <option value="true">true</option>
                            <option value="false">false</option>
                    </select>

                    <button type="submit" class="btn btn-primary btn-submit-custom">Confirm</button>
                </form>
            </div>
        </div>


</body>



</html>
