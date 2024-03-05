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
INSERT INTO Room (hotel_address, room_number, price, capacity, view, extendable) VALUES
--Pacific Coast Inns Rooms
('101 Ocean Drive, Victoria, BC', 101, 150.00, 2, 'Sea View', TRUE),
('101 Ocean Drive, Victoria, BC', 102, 200.00, 4, 'Mountain View', FALSE),
('101 Ocean Drive, Victoria, BC', 103, 250.00, 3, 'City View', TRUE),
('101 Ocean Drive, Victoria, BC', 104, 300.00, 4, 'Garden View', FALSE),
('101 Ocean Drive, Victoria, BC', 105, 350.00, 5, 'Sea View', TRUE);

