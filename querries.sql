--The 5 hotel chains
INSERT INTO Hotel_Chain (name, office_address) VALUES
('Maple Leaf Hotels', '123 Maple St, Toronto, ON'),
('Northern Lights Resorts', '100 Aurora Ave, Yellowknife, NT'),
('Rocky Mountain Lodges', '200 Mountain Rd, Banff, AB'),
('Pacific Coast Inns', '400 Ocean Blvd, Vancouver, BC'),
('French Charm Hotels', '500 Rue Saint, Quebec City, QC');

--8 hotels from Maple Leafs Hotels
INSERT INTO Hotel (address, stars, contact_email, num_rooms, hotel_chain_name) VALUES
('1 Maple Lane, Toronto, ON', 4, 'info@mapleleafhotels.com', 120, 'Maple Leaf Hotels'),
('200 Mountain View, Calgary, AB', 5, 'contact@mapleleafhotels.com', 150, 'Maple Leaf Hotels'),
('555 Seaside Blvd, Vancouver, BC', 3, 'booking@mapleleafhotels.com', 100, 'Maple Leaf Hotels'),
('1010 Northern Lights Ave, Yellowknife, NT', 4, 'reservations@mapleleafhotels.com', 80, 'Maple Leaf Hotels'),
('768 East Coast Rd, Halifax, NS', 3, 'service@mapleleafhotels.com', 90, 'Maple Leaf Hotels'),
('909 Maple Street, Ottawa, ON', 4, 'ottawa@mapleleafhotels.com', 110, 'Maple Leaf Hotels'),
('1010 Maple Avenue, Winnipeg, MB', 3, 'winnipeg@mapleleafhotels.com', 70, 'Maple Leaf Hotels'),
('1111 Maple Road, Regina, SK', 5, 'regina@mapleleafhotels.com', 130, 'Maple Leaf Hotels');


--8 hotels from Northern Lights Resorts
INSERT INTO Hotel (address, stars, contact_email, num_rooms, hotel_chain_name) VALUES
('101 Aurora Street, Whitehorse, YT', 4, 'info@northernlightsresorts.com', 100, 'Northern Lights Resorts'),
('202 Polar Road, Yellowknife, NT', 5, 'contact@northernlightsresorts.com', 120, 'Northern Lights Resorts'),
('303 Iceberg Lane, Iqaluit, NU', 3, 'booking@northernlightsresorts.com', 80, 'Northern Lights Resorts'),
('404 Northern Ave, Edmonton, AB', 4, 'reservations@northernlightsresorts.com', 90, 'Northern Lights Resorts'),
('505 Tundra Trail, Churchill, MB', 3, 'service@northernlightsresorts.com', 70, 'Northern Lights Resorts'),
('606 Arctic View, Fort McMurray, AB', 4, 'arcticview@northernlightsresorts.com', 90, 'Northern Lights Resorts'),
('707 Polar Express, Labrador City, NL', 5, 'polarexpress@northernlightsresorts.com', 100, 'Northern Lights Resorts'),
('808 Northern Edge, Thompson, MB', 3, 'northernedge@northernlightsresorts.com', 80, 'Northern Lights Resorts');



--8 hotels from Rocky Mountain Lodges
INSERT INTO Hotel (address, stars, contact_email, num_rooms, hotel_chain_name) VALUES
('101 Peak View, Banff, AB', 5, 'info@rockymountainlodges.com', 150, 'Rocky Mountain Lodges'),
('202 Summit Drive, Jasper, AB', 4, 'contact@rockymountainlodges.com', 100, 'Rocky Mountain Lodges'),
('303 Ridge Road, Canmore, AB', 4, 'booking@rockymountainlodges.com', 120, 'Rocky Mountain Lodges'),
('404 Mountain Trail, Revelstoke, BC', 3, 'reservations@rockymountainlodges.com', 80, 'Rocky Mountain Lodges'),
('505 Forest Parkway, Whistler, BC', 5, 'service@rockymountainlodges.com', 130, 'Rocky Mountain Lodges');
('909 Valley Road, Kananaskis, AB', 4, 'valley@rockymountainlodges.com', 85, 'Rocky Mountain Lodges'),
('1010 Highland Ave, Fernie, BC', 5, 'highland@rockymountainlodges.com', 95, 'Rocky Mountain Lodges'),
('1111 Mountain View, Kimberley, BC', 3, 'mountainview@rockymountainlodges.com', 75, 'Rocky Mountain Lodges');

--8 hotels from Pacific Coast Inns
INSERT INTO Hotel (address, stars, contact_email, num_rooms, hotel_chain_name) VALUES
('101 Ocean Drive, Victoria, BC', 4, 'info@pacificcoastinns.com', 100, 'Pacific Coast Inns'),
('202 Seaside Blvd, Tofino, BC', 5, 'contact@pacificcoastinns.com', 120, 'Pacific Coast Inns'),
('303 Coastal Road, Prince Rupert, BC', 3, 'booking@pacificcoastinns.com', 80, 'Pacific Coast Inns'),
('404 Beachfront Ave, Nanaimo, BC', 4, 'reservations@pacificcoastinns.com', 90, 'Pacific Coast Inns'),
('505 Harbour Lane, Vancouver, BC', 3, 'service@pacificcoastinns.com', 70, 'Pacific Coast Inns'),
('606 Harbor View, Sidney, BC', 4, 'harborview@pacificcoastinns.com', 95, 'Pacific Coast Inns'),
('707 Oceanfront Walk, Powell River, BC', 3, 'oceanfront@pacificcoastinns.com', 85, 'Pacific Coast Inns'),
('808 Seashore Drive, Port Hardy, BC', 4, 'seashore@pacificcoastinns.com', 100, 'Pacific Coast Inns');



--8 hotels from French Charm Hotel
INSERT INTO Hotel (address, stars, contact_email, num_rooms, hotel_chain_name) VALUES
('101 Rue de la Montagne, Montreal, QC', 4, 'info@frenchcharmhotels.com', 120, 'French Charm Hotels'),
('202 Rue Saint-Jean, Quebec City, QC', 5, 'contact@frenchcharmhotels.com', 150, 'French Charm Hotels'),
('303 Rue Saint-Paul, Trois-Rivières, QC', 3, 'booking@frenchcharmhotels.com', 90, 'French Charm Hotels'),
('404 Boulevard Charest, Sherbrooke, QC', 4, 'reservations@frenchcharmhotels.com', 100, 'French Charm Hotels'),
('505 Rue King Ouest, Gatineau, QC', 3, 'service@frenchcharmhotels.com', 80, 'French Charm Hotels'),
('606 Rue Principale, Sainte-Anne-de-Beaupré, QC', 4, 'stay@frenchcharmhotels.com', 85, 'French Charm Hotels'),
('707 Boulevard René-Lévesque, Montreal, QC', 5, 'luxury@frenchcharmhotels.com', 150, 'French Charm Hotels'),
('808 Chemin du Roy, Quebec City, QC', 3, 'heritage@frenchcharmhotels.com', 75, 'French Charm Hotels');

--ROOMS (5 for each hotel, soo 200 rooms total)
--Pacific Coast Inns Rooms
INSERT INTO Room (hotel_address, room_number, price, capacity, view, extendable) VALUES
('101 Ocean Drive, Victoria, BC', 101, 150.00, 2, 'Sea View', TRUE),
('101 Ocean Drive, Victoria, BC', 102, 200.00, 6, 'Mountain View', FALSE),
('101 Ocean Drive, Victoria, BC', 103, 250.00, 3, 'City View', TRUE),
('101 Ocean Drive, Victoria, BC', 104, 300.00, 4, 'Garden View', FALSE),
('101 Ocean Drive, Victoria, BC', 105, 350.00, 5, 'Sea View', TRUE),
('202 Seaside Blvd, Tofino, BC', 1, 150.00, 2, 'Sea View', TRUE),
('202 Seaside Blvd, Tofino, BC', 2, 200.00, 6, 'Mountain View', FALSE),
('202 Seaside Blvd, Tofino, BC', 3, 250.00, 3, 'City View', TRUE),
('202 Seaside Blvd, Tofino, BC', 4, 300.00, 4, 'Garden View', FALSE),
('202 Seaside Blvd, Tofino, BC', 5, 350.00, 5, 'Sea View', TRUE),
('303 Coastal Road, Prince Rupert, BC', 10, 150.00, 2, 'Sea View', TRUE),
('303 Coastal Road, Prince Rupert, BC', 12, 200.00, 6, 'Mountain View', FALSE),
('303 Coastal Road, Prince Rupert, BC', 13, 250.00, 3, 'City View', TRUE),
('303 Coastal Road, Prince Rupert, BC', 14, 300.00, 4, 'Garden View', FALSE),
('303 Coastal Road, Prince Rupert, BC', 15, 350.00, 5, 'Sea View', TRUE),
('404 Beachfront Ave, Nanaimo, BC', 20, 150.00, 2, 'Sea View', TRUE),
('404 Beachfront Ave, Nanaimo, BC', 22, 200.00, 6, 'Mountain View', FALSE),
('404 Beachfront Ave, Nanaimo, BC', 23, 250.00, 3, 'City View', TRUE),
('404 Beachfront Ave, Nanaimo, BC', 24, 300.00, 4, 'Garden View', FALSE),
('404 Beachfront Ave, Nanaimo, BC', 25, 350.00, 5, 'Sea View', TRUE),
('505 Harbour Lane, Vancouver, BC', 20, 150.00, 2, 'Sea View', TRUE),
('505 Harbour Lane, Vancouver, BC', 22, 200.00, 6, 'Mountain View', FALSE),
('505 Harbour Lane, Vancouver, BC', 23, 250.00, 3, 'City View', TRUE),
('505 Harbour Lane, Vancouver, BC', 24, 300.00, 4, 'Garden View', FALSE),
('505 Harbour Lane, Vancouver, BC', 25, 350.00, 5, 'Sea View', TRUE),
('606 Harbor View, Sidney, BC', 30, 150.00, 2, 'Sea View', TRUE),
('606 Harbor View, Sidney, BC', 32, 200.00, 6, 'Mountain View', FALSE),
('606 Harbor View, Sidney, BC', 33, 250.00, 3, 'City View', TRUE),
('606 Harbor View, Sidney, BC', 34, 300.00, 4, 'Garden View', FALSE),
('606 Harbor View, Sidney, BC', 35, 350.00, 5, 'Sea View', TRUE),
('707 Oceanfront Walk, Powell River, BC', 40, 150.00, 2, 'Sea View', TRUE),
('707 Oceanfront Walk, Powell River, BC', 42, 200.00, 6, 'Mountain View', FALSE),
('707 Oceanfront Walk, Powell River, BC', 43, 250.00, 3, 'City View', TRUE),
('707 Oceanfront Walk, Powell River, BC', 44, 300.00, 4, 'Garden View', FALSE),
('707 Oceanfront Walk, Powell River, BC', 45, 350.00, 5, 'Sea View', TRUE),
('808 Seashore Drive, Port Hardy, BC', 101, 100.00, 1, 'Street View', FALSE),
('808 Seashore Drive, Port Hardy, BC', 102, 150.00, 2, 'Garden View', FALSE),
('808 Seashore Drive, Port Hardy, BC', 103, 200.00, 5, 'Sea View', TRUE),
('808 Seashore Drive, Port Hardy, BC', 104, 250.00, 3, 'Sea View', TRUE),
('808 Seashore Drive, Port Hardy, BC', 105, 300.00, 4, 'Panoramic Sea View', TRUE);

--French Charm Hotel Rooms
INSERT INTO Room (hotel_address, room_number, price, capacity, view, extendable) VALUES
('101 Rue de la Montagne, Montreal, QC', 501, 150.00, 1, 'City View', FALSE),
('101 Rue de la Montagne, Montreal, QC', 502, 200.00, 2, 'City View', FALSE),
('101 Rue de la Montagne, Montreal, QC', 503, 250.00, 5, 'Park View', TRUE),
('101 Rue de la Montagne, Montreal, QC', 504, 300.00, 3, 'Mountain View', TRUE),
('101 Rue de la Montagne, Montreal, QC', 505, 350.00, 4, 'Panoramic City View', TRUE),
('202 Rue Saint-Jean, Quebec City, QC', 101, 150.00, 2, 'Sea View', TRUE),
('202 Rue Saint-Jean, Quebec City, QC', 102, 200.00, 1, 'Mountain View', FALSE),
('202 Rue Saint-Jean, Quebec City, QC', 103, 250.00, 3, 'City View', TRUE),
('202 Rue Saint-Jean, Quebec City, QC', 104, 300.00, 4, 'Garden View', FALSE),
('202 Rue Saint-Jean, Quebec City, QC', 105, 350.00, 5, 'Sea View', TRUE),
('303 Rue Saint-Paul, Trois-Rivières, QC', 101, 120.00, 1, 'City View', FALSE),
('303 Rue Saint-Paul, Trois-Rivières, QC', 102, 130.00, 2, 'City View', TRUE),
('303 Rue Saint-Paul, Trois-Rivières, QC', 103, 150.00, 5, 'Garden View', FALSE),
('303 Rue Saint-Paul, Trois-Rivières, QC', 104, 170.00, 3, 'River View', TRUE),
('303 Rue Saint-Paul, Trois-Rivières, QC', 105, 200.00, 4, 'River View', FALSE),
('404 Boulevard Charest, Sherbrooke, QC', 101, 125.00, 2, 'City View', FALSE),
('404 Boulevard Charest, Sherbrooke, QC', 102, 150.00, 1, 'Garden View', TRUE),
('404 Boulevard Charest, Sherbrooke, QC', 103, 175.00, 3, 'Mountain View', FALSE),
('404 Boulevard Charest, Sherbrooke, QC', 104, 200.00, 5, 'City View', TRUE),
('404 Boulevard Charest, Sherbrooke, QC', 105, 250.00, 4, 'Lake View', FALSE),
('505 Rue King Ouest, Gatineau, QC', 201, 150.00, 2, 'City View', FALSE),
('505 Rue King Ouest, Gatineau, QC', 202, 180.00, 1, 'Garden View', TRUE),
('505 Rue King Ouest, Gatineau, QC', 203, 200.00, 3, 'River View', FALSE),
('505 Rue King Ouest, Gatineau, QC', 204, 250.00, 5, 'City View', TRUE),
('505 Rue King Ouest, Gatineau, QC', 205, 300.00, 4, 'River View', TRUE),
('606 Rue Principale, Sainte-Anne-de-Beaupré, QC', 101, 120.00, 1, 'City View', FALSE),
('606 Rue Principale, Sainte-Anne-de-Beaupré, QC', 102, 150.00, 5, 'Garden View', TRUE),
('606 Rue Principale, Sainte-Anne-de-Beaupré, QC', 103, 175.00, 2, 'Mountain View', FALSE),
('606 Rue Principale, Sainte-Anne-de-Beaupré, QC', 104, 200.00, 3, 'River View', TRUE),
('606 Rue Principale, Sainte-Anne-de-Beaupré, QC', 105, 250.00, 4, 'Sea View', FALSE),
('707 Boulevard René-Lévesque, Montreal, QC', 301, 200.00, 1, 'City View', FALSE),
('707 Boulevard René-Lévesque, Montreal, QC', 302, 220.00, 5, 'Park View', TRUE),
('707 Boulevard René-Lévesque, Montreal, QC', 303, 250.00, 2, 'City View', FALSE),
('707 Boulevard René-Lévesque, Montreal, QC', 304, 275.00, 3, 'Garden View', TRUE),
('707 Boulevard René-Lévesque, Montreal, QC', 305, 300.00, 4, 'River View', FALSE),
('808 Chemin du Roy, Quebec City, QC', 401, 210.00, 2, 'City View', FALSE),
('808 Chemin du Roy, Quebec City, QC', 402, 230.00, 1, 'Park View', TRUE),
('808 Chemin du Roy, Quebec City, QC', 403, 250.00, 3, 'City View', FALSE),
('808 Chemin du Roy, Quebec City, QC', 404, 270.00, 5, 'Garden View', TRUE),
('808 Chemin du Roy, Quebec City, QC', 405, 290.00, 4, 'River View', FALSE);

--Rocky Mountain Lodges Rooms
INSERT INTO Room (hotel_address, room_number, price, capacity, view, extendable) VALUES
('101 Peak View, Banff, AB', 101, 200.00, 2, 'Mountain View', TRUE),
('101 Peak View, Banff, AB', 102, 250.00, 1, 'Forest View', FALSE),
('101 Peak View, Banff, AB', 103, 300.00, 3, 'Lake View', TRUE),
('101 Peak View, Banff, AB', 104, 350.00, 5, 'Mountain View', FALSE),
('101 Peak View, Banff, AB', 105, 400.00, 4, 'City View', TRUE),
('202 Summit Drive, Jasper, AB', 201, 250.00, 1, 'Mountain View', FALSE),
('202 Summit Drive, Jasper, AB', 202, 275.00, 2, 'Lake View', TRUE),
('202 Summit Drive, Jasper, AB', 203, 300.00, 5, 'Forest View', FALSE),
('202 Summit Drive, Jasper, AB', 204, 325.00, 3, 'Mountain View', TRUE),
('202 Summit Drive, Jasper, AB', 205, 350.00, 4, 'City View', FALSE),
('303 Ridge Road, Canmore, AB', 301, 200.00, 1, 'Mountain View', TRUE),
('303 Ridge Road, Canmore, AB', 302, 220.00, 2, 'Forest View', FALSE),
('303 Ridge Road, Canmore, AB', 303, 250.00, 3, 'Lake View', TRUE),
('303 Ridge Road, Canmore, AB', 304, 275.00, 5, 'Mountain View', FALSE),
('303 Ridge Road, Canmore, AB', 305, 300.00, 4, 'City View', TRUE),
('404 Mountain Trail, Revelstoke, BC', 401, 210.00, 1, 'Forest View', FALSE),
('404 Mountain Trail, Revelstoke, BC', 402, 230.00, 2, 'Mountain View', TRUE),
('404 Mountain Trail, Revelstoke, BC', 403, 250.00, 5, 'Lake View', FALSE),
('404 Mountain Trail, Revelstoke, BC', 404, 270.00, 3, 'City View', TRUE),
('404 Mountain Trail, Revelstoke, BC', 405, 290.00, 4, 'Forest View', FALSE),
('505 Forest Parkway, Whistler, BC', 501, 220.00, 1, 'Mountain View', FALSE),
('505 Forest Parkway, Whistler, BC', 502, 240.00, 2, 'Forest View', TRUE),
('505 Forest Parkway, Whistler, BC', 503, 260.00, 3, 'Lake View', FALSE),
('505 Forest Parkway, Whistler, BC', 504, 280.00, 5, 'City View', TRUE),
('505 Forest Parkway, Whistler, BC', 505, 300.00, 4, 'Forest View', FALSE),
('909 Valley Road, Kananaskis, AB', 601, 230.00, 2, 'Mountain View', FALSE),
('909 Valley Road, Kananaskis, AB', 602, 250.00, 1, 'Forest View', TRUE),
('909 Valley Road, Kananaskis, AB', 603, 270.00, 3, 'Lake View', FALSE),
('909 Valley Road, Kananaskis, AB', 604, 290.00, 5, 'Valley View', TRUE),
('909 Valley Road, Kananaskis, AB', 605, 310.00, 4, 'Forest View', FALSE),
('1010 Highland Ave, Fernie, BC', 701, 240.00, 1, 'Mountain View', FALSE),
('1010 Highland Ave, Fernie, BC', 702, 260.00, 2, 'Forest View', TRUE),
('1010 Highland Ave, Fernie, BC', 703, 280.00, 5, 'Lake View', FALSE),
('1010 Highland Ave, Fernie, BC', 704, 300.00, 3, 'Valley View', TRUE),
('1010 Highland Ave, Fernie, BC', 705, 320.00, 4, 'Forest View', FALSE),
('1111 Mountain View, Kimberley, BC', 801, 250.00, 1, 'Mountain View', FALSE),
('1111 Mountain View, Kimberley, BC', 802, 270.00, 2, 'Forest View', TRUE),
('1111 Mountain View, Kimberley, BC', 803, 290.00, 5, 'Lake View', FALSE),
('1111 Mountain View, Kimberley, BC', 804, 310.00, 3, 'City View', TRUE),
('1111 Mountain View, Kimberley, BC', 805, 330.00, 4, 'Mountain View', FALSE);

--Northern Lights Resorts Rooms
INSERT INTO Room (hotel_address, room_number, price, capacity, view, extendable) VALUES
('101 Aurora Street, Whitehorse, YT', 901, 260.00, 1, 'City View', FALSE),
('101 Aurora Street, Whitehorse, YT', 902, 280.00, 2, 'Mountain View', TRUE),
('101 Aurora Street, Whitehorse, YT', 903, 300.00, 3, 'Forest View', FALSE),
('101 Aurora Street, Whitehorse, YT', 904, 320.00, 4, 'Lake View', TRUE),
('101 Aurora Street, Whitehorse, YT', 905, 340.00, 5, 'City View', FALSE),
('202 Polar Road, Yellowknife, NT', 1001, 270.00, 1, 'City View', FALSE),
('202 Polar Road, Yellowknife, NT', 1002, 290.00, 2, 'Mountain View', TRUE),
('202 Polar Road, Yellowknife, NT', 1003, 310.00, 3, 'Forest View', FALSE),
('202 Polar Road, Yellowknife, NT', 1004, 330.00, 4, 'Lake View', TRUE),
('202 Polar Road, Yellowknife, NT', 1005, 350.00, 5, 'City View', FALSE),
('303 Iceberg Lane, Iqaluit, NU', 1101, 280.00, 1, 'City View', FALSE),
('303 Iceberg Lane, Iqaluit, NU', 1102, 300.00, 5, 'Mountain View', TRUE),
('303 Iceberg Lane, Iqaluit, NU', 1103, 320.00, 2, 'Forest View', FALSE),
('303 Iceberg Lane, Iqaluit, NU', 1104, 340.00, 3, 'Lake View', TRUE),
('303 Iceberg Lane, Iqaluit, NU', 1105, 360.00, 4, 'City View', FALSE),
('404 Northern Ave, Edmonton, AB', 1201, 290.00, 1, 'City View', FALSE),
('404 Northern Ave, Edmonton, AB', 1202, 310.00, 2, 'Park View', TRUE),
('404 Northern Ave, Edmonton, AB', 1203, 330.00, 3, 'River View', FALSE),
('404 Northern Ave, Edmonton, AB', 1204, 350.00, 5, 'Garden View', TRUE),
('404 Northern Ave, Edmonton, AB', 1205, 370.00, 4, 'City View', FALSE),
('505 Tundra Trail, Churchill, MB', 1301, 300.00, 1, 'City View', FALSE),
('505 Tundra Trail, Churchill, MB', 1302, 320.00, 2, 'Park View', TRUE),
('505 Tundra Trail, Churchill, MB', 1303, 340.00, 5, 'River View', FALSE),
('505 Tundra Trail, Churchill, MB', 1304, 360.00, 3, 'Garden View', TRUE),
('505 Tundra Trail, Churchill, MB', 1305, 380.00, 4, 'City View', FALSE),
('606 Arctic View, Fort McMurray, AB', 1401, 310.00, 1, 'City View', FALSE),
('606 Arctic View, Fort McMurray, AB', 1402, 330.00, 2, 'Park View', TRUE),
('606 Arctic View, Fort McMurray, AB', 1403, 350.00, 3, 'River View', FALSE),
('606 Arctic View, Fort McMurray, AB', 1404, 370.00, 5, 'Garden View', TRUE),
('606 Arctic View, Fort McMurray, AB', 1405, 390.00, 4, 'City View', FALSE),
('707 Polar Express, Labrador City, NL', 1501, 320.00, 1, 'City View', FALSE),
('707 Polar Express, Labrador City, NL', 1502, 340.00, 2, 'Park View', TRUE),
('707 Polar Express, Labrador City, NL', 1503, 360.00, 3, 'River View', FALSE),
('707 Polar Express, Labrador City, NL', 1504, 380.00, 5, 'Garden View', TRUE),
('707 Polar Express, Labrador City, NL', 1505, 400.00, 4, 'City View', FALSE),
('808 Northern Edge, Thompson, MB', 1601, 330.00, 1, 'City View', FALSE),
('808 Northern Edge, Thompson, MB', 1602, 350.00, 2, 'Park View', TRUE),
('808 Northern Edge, Thompson, MB', 1603, 370.00, 5, 'River View', FALSE),
('808 Northern Edge, Thompson, MB', 1604, 390.00, 3, 'Garden View', TRUE),
('808 Northern Edge, Thompson, MB', 1605, 410.00, 4, 'City View', FALSE);

-- Maple Leafs Hotels Rooms
INSERT INTO Room (hotel_address, room_number, price, capacity, view, extendable) VALUES
('1 Maple Lane, Toronto, ON', 1701, 350.00, 1, 'City View', FALSE),
('1 Maple Lane, Toronto, ON', 1702, 370.00, 2, 'Park View', TRUE),
('1 Maple Lane, Toronto, ON', 1703, 390.00, 3, 'River View', FALSE),
('1 Maple Lane, Toronto, ON', 1704, 410.00, 5, 'Garden View', TRUE),
('1 Maple Lane, Toronto, ON', 1705, 430.00, 4, 'City View', FALSE),
('200 Mountain View, Calgary, AB', 1801, 340.00, 1, 'City View', FALSE),
('200 Mountain View, Calgary, AB', 1802, 360.00, 2, 'Park View', TRUE),
('200 Mountain View, Calgary, AB', 1803, 380.00, 3, 'River View', FALSE),
('200 Mountain View, Calgary, AB', 1804, 400.00, 5, 'Garden View', TRUE),
('200 Mountain View, Calgary, AB', 1805, 420.00, 4, 'City View', FALSE),
('555 Seaside Blvd, Vancouver, BC', 1901, 360.00, 1, 'Sea View', FALSE),
('555 Seaside Blvd, Vancouver, BC', 1902, 380.00, 2, 'Mountain View', TRUE),
('555 Seaside Blvd, Vancouver, BC', 1903, 400.00, 3, 'City View', FALSE),
('555 Seaside Blvd, Vancouver, BC', 1904, 420.00, 4, 'Garden View', TRUE),
('555 Seaside Blvd, Vancouver, BC', 1905, 440.00, 5, 'Sea View', FALSE),
('1010 Northern Lights Ave, Yellowknife, NT', 2001, 370.00, 1, 'City View', FALSE),
('1010 Northern Lights Ave, Yellowknife, NT', 2002, 390.00, 2, 'Park View', TRUE),
('1010 Northern Lights Ave, Yellowknife, NT', 2003, 410.00, 3, 'River View', FALSE),
('1010 Northern Lights Ave, Yellowknife, NT', 2004, 430.00, 5, 'Garden View', TRUE),
('1010 Northern Lights Ave, Yellowknife, NT', 2005, 450.00, 4, 'City View', FALSE),
('768 East Coast Rd, Halifax, NS', 2101, 380.00, 1, 'Sea View', FALSE),
('768 East Coast Rd, Halifax, NS', 2102, 400.00, 2, 'City View', TRUE),
('768 East Coast Rd, Halifax, NS', 2103, 420.00, 3, 'Park View', FALSE),
('768 East Coast Rd, Halifax, NS', 2104, 440.00, 4, 'Garden View', TRUE),
('768 East Coast Rd, Halifax, NS', 2105, 460.00, 5, 'Sea View', FALSE),
('909 Maple Street, Ottawa, ON', 2201, 390.00, 1, 'City View', FALSE),
('909 Maple Street, Ottawa, ON', 2202, 410.00, 2, 'Park View', TRUE),
('909 Maple Street, Ottawa, ON', 2203, 430.00, 3, 'River View', FALSE),
('909 Maple Street, Ottawa, ON', 2204, 450.00, 5, 'Garden View', TRUE),
('909 Maple Street, Ottawa, ON', 2205, 470.00, 4, 'City View', FALSE),
('1010 Maple Avenue, Winnipeg, MB', 2301, 400.00, 1, 'City View', FALSE),
('1010 Maple Avenue, Winnipeg, MB', 2302, 420.00, 2, 'Park View', TRUE),
('1010 Maple Avenue, Winnipeg, MB', 2303, 440.00, 3, 'River View', FALSE),
('1010 Maple Avenue, Winnipeg, MB', 2304, 460.00, 5, 'Garden View', TRUE),
('1010 Maple Avenue, Winnipeg, MB', 2305, 480.00, 4, 'City View', FALSE),
('1111 Maple Road, Regina, SK', 2401, 410.00, 1, 'City View', FALSE),
('1111 Maple Road, Regina, SK', 2402, 430.00, 2, 'Park View', TRUE),
('1111 Maple Road, Regina, SK', 2403, 450.00, 3, 'River View', FALSE),
('1111 Maple Road, Regina, SK', 2404, 470.00, 5, 'Garden View', TRUE),
('1111 Maple Road, Regina, SK', 2405, 490.00, 4, 'City View', FALSE);

--the four aggregation/nested querries

--1 Aggregation Query - Average Room Price Per Hotel:
SELECT hotel_address, AVG(price) AS average_price
FROM Room
GROUP BY hotel_address;

--2 Nested Query - Hotels with Room Capacity Above a Certain Threshold:
SELECT hotel_address
FROM Room
WHERE capacity > (SELECT MAX(capacity) FROM Room WHERE capacity > 4);

--3 List All Rooms with Extendable Feature in a Specific Hotel:
SELECT room_number, price, capacity
FROM Room
WHERE extendable = TRUE AND hotel_address = '505 Forest Parkway, Whistler, BC';

--4 Total Number of Rooms Across All Hotels:
SELECT COUNT(*) AS total_rooms
FROM Room;

--TRIGGERS *****have to change this***
CREATE TRIGGER after_room_insert
AFTER INSERT ON Room
FOR EACH ROW
BEGIN
  INSERT INTO RoomLog (operation, room_number, hotel_address, log_date)
  VALUES ('INSERT', NEW.room_number, NEW.hotel_address, CURRENT_TIMESTAMP);
END;

CREATE TRIGGER after_room_delete
AFTER DELETE ON Room
FOR EACH ROW
BEGIN
  INSERT INTO RoomLog (operation, room_number, hotel_address, log_date)
  VALUES ('DELETE', OLD.room_number, OLD.hotel_address, CURRENT_TIMESTAMP);
END;

CREATE TRIGGER after_room_update
AFTER UPDATE ON Room
FOR EACH ROW
BEGIN
  INSERT INTO RoomLog (operation, room_number, hotel_address, log_date)
  VALUES ('UPDATE', NEW.room_number, NEW.hotel_address, CURRENT_TIMESTAMP);
END;

CREATE TRIGGER before_hotel_chain_delete
BEFORE DELETE ON Hotel_Chain
FOR EACH ROW
BEGIN
  IF (SELECT COUNT(*) FROM Hotel WHERE hotel_chain_name = OLD.name) > 0 THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Cannot delete hotel chain with existing hotels';
  END IF;
END;

--INDEXES

--1 This index will accelerate queries that involve searching, joining, or filtering
--  operations based on the hotel address in the Room table, such as finding all rooms
--  belonging to a specific hotel.

CREATE INDEX idx_room_hotel_address ON Room(hotel_address);

--2 This index is useful for queries that involve looking up all hotels belonging to a particular chain, enhancing
--  performance when dealing with aggregations, joins, or searches based on hotel chains.

CREATE INDEX idx_hotel_chain_name ON Hotel(hotel_chain_name);

--3 This index supports efficient execution of queries that filter rooms by price, such as finding rooms within a
--  specific budget or comparing room prices. It is particularly useful for range queries on room rates.

CREATE INDEX idx_room_price ON Room(price);













































