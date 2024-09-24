-- ===============================================================
-- Airbnb Clone Database: Phase 2 - Sample Data Entries
-- Created on: 2024-09-24
-- Description: This script inserts 25 sample data entries into each 
-- table of the Airbnb-like platform database.
-- ===============================================================

-- Use the airbnb_clone database
USE airbnb_clone;

-- ===============================================================
-- Table: User
-- This section populates the User table with sample data.
-- Each entry includes the user_id, user_type, first_name, last_name,
-- email, phone, profile_pic_url, dob, address, bio, account_creation_date,
-- and last_login_date.
-- ===============================================================
INSERT INTO `User` (`user_id`, `user_type`, `first_name`, `last_name`, `email`, `phone`, `profile_pic_url`, `dob`, `address`, `bio`, `account_creation_date`, `last_login_date`) VALUES
(1, 'Guest', 'Alice', 'Smith', 'alice.smith@example.com', '1234567890', 'http://example.com/pic1.jpg', '1990-05-14', '123 Main St, Cityville, ST 12345', 'Love traveling and exploring new cultures.', '2024-01-01 12:00:00', '2024-09-22 15:00:00'),
(2, 'Host', 'Bob', 'Johnson', 'bob.johnson@example.com', '0987654321', 'http://example.com/pic2.jpg', '1985-03-22', '456 Elm St, Townsville, ST 67890', 'Enjoy hosting guests from around the world!', '2024-01-02 13:00:00', '2024-09-22 16:00:00'),
(3, 'Administrator', 'Charlie', 'Williams', 'charlie.williams@example.com', '2345678901', 'http://example.com/pic3.jpg', '1988-07-09', '789 Oak St, Villageville, ST 54321', 'Admin of the platform, here to help!', '2024-01-03 14:00:00', '2024-09-22 17:00:00'),
(4, 'Guest', 'Diana', 'Brown', 'diana.brown@example.com', '3456789012', 'http://example.com/pic4.jpg', '1992-11-12', '321 Maple St, Cityplace, ST 23456', 'Foodie and travel enthusiast.', '2024-01-04 15:00:00', '2024-09-22 18:00:00'),
(5, 'Host', 'Edward', 'Jones', 'edward.jones@example.com', '4567890123', 'http://example.com/pic5.jpg', '1983-02-28', '654 Pine St, Countrytown, ST 34567', 'Love sharing my home with travelers.', '2024-01-05 16:00:00', '2024-09-22 19:00:00'),
(6, 'Guest', 'Fiona', 'Garcia', 'fiona.garcia@example.com', '5678901234', 'http://example.com/pic6.jpg', '1995-08-01', '987 Birch St, Forestcity, ST 45678', 'Adventurer at heart!', '2024-01-06 17:00:00', '2024-09-22 20:00:00'),
(7, 'Host', 'George', 'Martinez', 'george.martinez@example.com', '6789012345', 'http://example.com/pic7.jpg', '1975-12-20', '135 Cedar St, Mountainview, ST 56789', 'Always ready to welcome new guests.', '2024-01-07 18:00:00', '2024-09-22 21:00:00'),
(8, 'Administrator', 'Hannah', 'Lopez', 'hannah.lopez@example.com', '7890123456', 'http://example.com/pic8.jpg', '1991-10-30', '246 Spruce St, Lakeview, ST 67890', 'Dedicated to improving user experience.', '2024-01-08 19:00:00', '2024-09-22 22:00:00'),
(9, 'Guest', 'Ian', 'Hernandez', 'ian.hernandez@example.com', '8901234567', 'http://example.com/pic9.jpg', '1987-06-14', '369 Fir St, Riverside, ST 78901', 'Sports lover and traveler.', '2024-01-09 20:00:00', '2024-09-22 23:00:00'),
(10, 'Host', 'Julia', 'King', 'julia.king@example.com', '9012345678', 'http://example.com/pic10.jpg', '1993-09-05', '147 Walnut St, Greenfield, ST 89012', 'Enjoys hosting and cooking.', '2024-01-10 21:00:00', '2024-09-22 10:00:00'),
(11, 'Guest', 'Kevin', 'Scott', 'kevin.scott@example.com', '0123456789', 'http://example.com/pic11.jpg', '1984-04-18', '258 Chestnut St, Hilltop, ST 90123', 'Passionate about photography.', '2024-01-11 22:00:00', '2024-09-22 11:00:00'),
(12, 'Host', 'Lily', 'Wright', 'lily.wright@example.com', '1234567891', 'http://example.com/pic12.jpg', '1990-07-25', '369 Maple St, Sunnyvale, ST 01234', 'Love sharing my space and meeting new people.', '2024-01-12 23:00:00', '2024-09-22 12:00:00'),
(13, 'Guest', 'Mike', 'Adams', 'mike.adams@example.com', '2345678902', 'http://example.com/pic13.jpg', '1980-01-14', '147 Willow St, Seaside, ST 12345', 'Beach lover and surfer.', '2024-01-13 00:00:00', '2024-09-22 13:00:00'),
(14, 'Host', 'Nina', 'Green', 'nina.green@example.com', '3456789013', 'http://example.com/pic14.jpg', '1994-11-02', '258 Cedar St, Valleyview, ST 23456', 'Enjoys gardening and hosting.', '2024-01-14 01:00:00', '2024-09-22 14:00:00'),
(15, 'Administrator', 'Oscar', 'Baker', 'oscar.baker@example.com', '4567890124', 'http://example.com/pic15.jpg', '1986-08-16', '369 Pine St, Westfield, ST 34567', 'Here to assist with any issues.', '2024-01-15 02:00:00', '2024-09-22 15:00:00'),
(16, 'Guest', 'Paula', 'Nelson', 'paula.nelson@example.com', '5678901235', 'http://example.com/pic16.jpg', '1992-03-07', '789 Birch St, Eastwood, ST 45678', 'Traveling is my passion.', '2024-01-16 03:00:00', '2024-09-22 16:00:00'),
(17, 'Host', 'Quentin', 'Carter', 'quentin.carter@example.com', '6789012346', 'http://example.com/pic17.jpg', '1989-12-15', '123 Maple St, Northside, ST 56789', 'Avid traveler and host.', '2024-01-17 04:00:00', '2024-09-22 17:00:00'),
(18, 'Guest', 'Rachel', 'Mitchell', 'rachel.mitchell@example.com', '7890123457', 'http://example.com/pic18.jpg', '1985-06-10', '456 Oak St, Central City, ST 67890', 'Lover of art and culture.', '2024-01-18 05:00:00', '2024-09-22 18:00:00'),
(19, 'Host', 'Steve', 'Turner', 'steve.turner@example.com', '8901234568', 'http://example.com/pic19.jpg', '1978-10-22', '789 Pine St, Southtown, ST 78901', 'Passionate about hospitality.', '2024-01-19 06:00:00', '2024-09-22 19:00:00'),
(20, 'Guest', 'Tina', 'Phillips', 'tina.phillips@example.com', '9012345679', 'http://example.com/pic20.jpg', '1991-04-04', '147 Cedar St, East Village, ST 89012', 'Explorer and nature lover.', '2024-01-20 07:00:00', '2024-09-22 20:00:00'),
(21, 'Host', 'Ursula', 'Hughes', 'ursula.hughes@example.com', '0123456780', 'http://example.com/pic21.jpg', '1984-02-11', '258 Elm St, Riverside, ST 90123', 'Enjoys connecting with travelers.', '2024-01-21 08:00:00', '2024-09-22 21:00:00'),
(22, 'Guest', 'Victor', 'Roberts', 'victor.roberts@example.com', '1234567892', 'http://example.com/pic22.jpg', '1990-05-18', '369 Spruce St, Hill Valley, ST 01234', 'Tech enthusiast and traveler.', '2024-01-22 09:00:00', '2024-09-22 22:00:00'),
(23, 'Host', 'Wendy', 'Hall', 'wendy.hall@example.com', '2345678903', 'http://example.com/pic23.jpg', '1987-11-25', '147 Birch St, Pine City, ST 12345', 'Love sharing my home with guests.', '2024-01-23 10:00:00', '2024-09-22 23:00:00'),
(24, 'Administrator', 'Xander', 'Young', 'xander.young@example.com', '3456789014', 'http://example.com/pic24.jpg', '1993-03-16', '258 Cedar St, Lake Town, ST 23456', 'Focused on user satisfaction.', '2024-01-24 11:00:00', '2024-09-23 00:00:00'),
(25, 'Guest', 'Yara', 'Scott', 'yara.scott@example.com', '4567890125', 'http://example.com/pic25.jpg', '1986-09-30', '369 Elm St, Valley Heights, ST 34567', 'Passionate about exploring new cultures.', '2024-01-25 12:00:00', '2024-09-23 01:00:00');

-- ===============================================================
-- Table: Accommodation
-- This section populates the Accommodation table with sample data.
-- Each entry includes accommodation_id, host_id, title, description,
-- address, city, state, country, zip, latitude, longitude,
-- property_type, room_type, max_guests, bedrooms, beds, bathrooms,
-- price_per_night, cleaning_fee, check_in_time, and check_out_time.
-- ===============================================================
INSERT INTO `Accommodation` (
    `accommodation_id`, `host_id`, `title`, `description`, 
    `address`, `city`, `state`, `country`, `zip`, 
    `latitude`, `longitude`, `property_type`, `room_type`, 
    `max_guests`, `bedrooms`, `beds`, `bathrooms`, 
    `price_per_night`, `cleaning_fee`, `check_in_time`, `check_out_time`
) VALUES
(1, 2, 'Cozy Downtown Apartment', 'A comfortable apartment in the heart of the city with all modern amenities.', 
 '123 City Ave', 'Cityville', 'ST', 'USA', '12345', 
 40.712776, -74.005974, 'Apartment', 'Entire place', 
 4, 2, 2, 1.5, 
 120.00, 30.00, '14:00:00', '11:00:00'),

(2, 5, 'Spacious Country House', 'A large house located in the serene countryside, perfect for family vacations.', 
 '456 Country Road', 'Countrytown', 'ST', 'USA', '34567', 
 34.052235, -118.243683, 'House', 'Entire place', 
 8, 4, 4, 3.0, 
 250.00, 50.00, '15:00:00', '10:00:00'),

(3, 7, 'Modern Loft with City View', 'A stylish loft with panoramic views of the city skyline.', 
 '789 Urban Blvd', 'Mountainview', 'ST', 'USA', '56789', 
 37.774929, -122.419416, 'Loft', 'Entire place', 
 3, 1, 2, 1.0, 
 180.00, 35.00, '13:00:00', '12:00:00'),

(4, 10, 'Beachside Bungalow', 'A charming bungalow steps away from the beach, ideal for a relaxing getaway.', 
 '147 Ocean Drive', 'Greenfield', 'ST', 'USA', '89012', 
 25.761681, -80.191788, 'Bungalow', 'Entire place', 
 6, 3, 3, 2.0, 
 200.00, 40.00, '16:00:00', '11:00:00'),

(5, 12, 'Luxury Penthouse Suite', 'Experience luxury in this spacious penthouse with top-notch facilities.', 
 '369 Sunset Strip', 'Sunnyvale', 'ST', 'USA', '01234', 
 34.052235, -118.243683, 'Penthouse', 'Entire place', 
 5, 3, 3, 2.5, 
 300.00, 60.00, '14:00:00', '12:00:00'),

(6, 14, 'Rustic Cabin in the Woods', 'A peaceful cabin surrounded by nature, perfect for a weekend retreat.', 
 '258 Forest Lane', 'Valleyview', 'ST', 'USA', '23456', 
 45.512794, -122.679565, 'Cabin', 'Entire place', 
 4, 2, 2, 1.5, 
 150.00, 25.00, '15:00:00', '10:00:00'),

(7, 17, 'Charming Studio Apartment', 'A cozy studio with all essentials, located near public transport.', 
 '123 Maple Street', 'Northside', 'ST', 'USA', '56789', 
 41.878113, -87.629799, 'Studio', 'Entire place', 
 2, 1, 1, 1.0, 
 100.00, 20.00, '13:00:00', '11:00:00'),

(8, 19, 'Elegant Townhouse', 'A beautifully designed townhouse with modern furnishings and amenities.', 
 '789 Elm Street', 'Southtown', 'ST', 'USA', '78901', 
 34.052235, -118.243683, 'Townhouse', 'Entire place', 
 5, 2, 3, 2.0, 
 220.00, 45.00, '14:00:00', '11:00:00'),

(9, 21, 'Modern Minimalist Flat', 'A sleek flat with minimalist design, perfect for urban explorers.', 
 '258 Spruce Avenue', 'Riverside', 'ST', 'USA', '90123', 
 40.712776, -74.005974, 'Flat', 'Entire place', 
 3, 1, 2, 1.0, 
 130.00, 30.00, '14:00:00', '11:00:00'),

(10, 23, 'Historic Victorian Home', 'Stay in a piece of history with this beautifully preserved Victorian home.', 
 '147 Pine Street', 'Pine City', 'ST', 'USA', '12345', 
 37.774929, -122.419416, 'House', 'Entire place', 
 7, 3, 4, 2.5, 
 280.00, 55.00, '15:00:00', '10:00:00'),

(11, 2, 'Urban Chic Condo', 'A stylish condo located in the bustling downtown area.', 
 '321 Broadway', 'Cityville', 'ST', 'USA', '12345', 
 40.730610, -73.935242, 'Condo', 'Entire place', 
 4, 2, 3, 2.0, 
 160.00, 35.00, '14:00:00', '11:00:00'),

(12, 5, 'Lakefront Villa', 'A luxurious villa with direct access to the lake, perfect for water activities.', 
 '654 Lake Road', 'Countrytown', 'ST', 'USA', '34567', 
 34.052235, -118.243683, 'Villa', 'Entire place', 
 10, 5, 6, 4.0, 
 400.00, 80.00, '16:00:00', '10:00:00'),

(13, 7, 'Downtown Micro Apartment', 'A compact apartment ideal for solo travelers or couples.', 
 '789 Market Street', 'Mountainview', 'ST', 'USA', '56789', 
 37.774929, -122.419416, 'Apartment', 'Entire place', 
 2, 1, 1, 1.0, 
 90.00, 15.00, '13:00:00', '11:00:00'),

(14, 10, 'Suburban Family Home', 'A spacious home in a quiet suburb, perfect for families.', 
 '147 Oak Avenue', 'Greenfield', 'ST', 'USA', '89012', 
 25.761681, -80.191788, 'House', 'Entire place', 
 6, 3, 4, 2.5, 
 210.00, 40.00, '15:00:00', '11:00:00'),

(15, 12, 'Eco-Friendly Cottage', 'A sustainable cottage with eco-friendly features and beautiful surroundings.', 
 '369 Willow Drive', 'Sunnyvale', 'ST', 'USA', '01234', 
 34.052235, -118.243683, 'Cottage', 'Entire place', 
 3, 1, 2, 1.5, 
 140.00, 25.00, '14:00:00', '11:00:00'),

(16, 14, 'Secluded Treehouse', 'An adventurous treehouse nestled in the woods, offering a unique stay experience.', 
 '258 Pine Lane', 'Valleyview', 'ST', 'USA', '23456', 
 45.512794, -122.679565, 'Treehouse', 'Entire place', 
 2, 1, 1, 1.0, 
 110.00, 20.00, '15:00:00', '10:00:00'),

(17, 17, 'City Center Suite', 'A luxurious suite located in the heart of the city with all amenities.', 
 '123 Main Boulevard', 'Northside', 'ST', 'USA', '56789', 
 41.878113, -87.629799, 'Suite', 'Entire place', 
 5, 2, 3, 2.0, 
 200.00, 40.00, '13:00:00', '11:00:00'),

(18, 19, 'Artist Loft', 'A creative space with an artistic vibe, perfect for creatives and freelancers.', 
 '789 Art Street', 'Southtown', 'ST', 'USA', '78901', 
 34.052235, -118.243683, 'Loft', 'Entire place', 
 3, 1, 2, 1.5, 
 150.00, 30.00, '14:00:00', '11:00:00'),

(19, 21, 'Minimalist Studio', 'A clean and minimalist studio, ideal for short stays.', 
 '258 Harmony Road', 'Riverside', 'ST', 'USA', '90123', 
 40.712776, -74.005974, 'Studio', 'Entire place', 
 2, 1, 1, 1.0, 
 95.00, 15.00, '14:00:00', '11:00:00'),

(20, 23, 'Country Estate', 'A grand estate with extensive grounds and luxurious interiors.', 
 '147 Heritage Lane', 'Pine City', 'ST', 'USA', '12345', 
 37.774929, -122.419416, 'Estate', 'Entire place', 
 12, 6, 8, 5.0, 
 500.00, 100.00, '16:00:00', '10:00:00'),

(21, 2, 'Downtown Studio', 'A compact and efficient studio located near major attractions.', 
 '321 Central Park', 'Cityville', 'ST', 'USA', '12345', 
 40.730610, -73.935242, 'Studio', 'Entire place', 
 2, 1, 1, 1.0, 
 110.00, 20.00, '14:00:00', '11:00:00'),

(22, 5, 'Modern Family Villa', 'A spacious villa designed for families, featuring a large garden.', 
 '654 Garden Road', 'Countrytown', 'ST', 'USA', '34567', 
 34.052235, -118.243683, 'Villa', 'Entire place', 
 8, 4, 5, 3.0, 
 350.00, 70.00, '15:00:00', '10:00:00'),

(23, 7, 'Compact City Flat', 'A small yet comfortable flat located close to public transportation.', 
 '789 Transit Street', 'Mountainview', 'ST', 'USA', '56789', 
 37.774929, -122.419416, 'Flat', 'Entire place', 
 3, 1, 2, 1.0, 
 100.00, 25.00, '13:00:00', '11:00:00'),

(24, 10, 'Suburban Bungalow', 'A cozy bungalow in a quiet suburb, perfect for couples.', 
 '147 Quiet Lane', 'Greenfield', 'ST', 'USA', '89012', 
 25.761681, -80.191788, 'Bungalow', 'Entire place', 
 4, 2, 2, 1.5, 
 180.00, 35.00, '15:00:00', '11:00:00'),

(25, 12, 'Luxury Lakeside Cabin', 'A premium cabin with stunning lake views and high-end amenities.', 
 '369 Lakeview Drive', 'Sunnyvale', 'ST', 'USA', '01234', 
 34.052235, -118.243683, 'Cabin', 'Entire place', 
 6, 3, 4, 2.5, 
 320.00, 65.00, '14:00:00', '11:00:00');

-- ===============================================================
-- Table: HouseRules
-- This section populates the HouseRules table with sample data.
-- Each entry includes rule_id, accommodation_id, and rule_description.
-- ===============================================================
INSERT INTO `HouseRules` (`rule_id`, `accommodation_id`, `rule_description`) VALUES
(1, 1, 'No smoking inside the property.'),
(2, 1, 'No pets allowed.'),
(3, 2, 'Quiet hours between 10 PM and 8 AM.'),
(4, 2, 'No parties or events.'),
(5, 3, 'Check-in after 2 PM and check-out before 12 PM.'),
(6, 3, 'Guests must be registered before arrival.'),
(7, 4, 'No smoking on the premises.'),
(8, 4, 'Maximum of 6 guests per stay.'),
(9, 5, 'No loud music after 10 PM.'),
(10, 5, 'Please respect the neighbors and keep noise to a minimum.'),
(11, 6, 'No cooking allowed in the common areas.'),
(12, 6, 'Guests must clean up after themselves.'),
(13, 7, 'No additional guests without prior approval.'),
(14, 7, 'No smoking inside the unit.'),
(15, 8, 'No pets allowed on the property.'),
(16, 8, 'Please turn off lights and appliances when not in use.'),
(17, 9, 'No smoking inside the accommodation.'),
(18, 9, 'Quiet hours are from 10 PM to 7 AM.'),
(19, 10, 'No parties or events allowed.'),
(20, 10, 'Guests must not disturb neighbors.'),
(21, 11, 'No smoking inside the property.'),
(22, 11, 'Pets are not allowed.'),
(23, 12, 'Quiet hours from 11 PM to 7 AM.'),
(24, 12, 'No parties or events allowed.'),
(25, 13, 'No smoking inside the accommodation.');

-- ===============================================================
-- Table: NeighborhoodInfo
-- This section populates the NeighborhoodInfo table with sample data.
-- Each entry includes info_id, accommodation_id, description,
-- safety_rating, nearby_attractions, and public_transport.
-- ===============================================================
INSERT INTO `NeighborhoodInfo` (
    `info_id`, `accommodation_id`, `description`, 
    `safety_rating`, `nearby_attractions`, `public_transport`
) VALUES
(1, 1, 'Located in the vibrant downtown area with easy access to nightlife and restaurants.', 8, 'Central Park, City Museum, Art Gallery', 'Metro lines 1 and 2, Bus routes 10, 20'),
(2, 2, 'Set in the peaceful countryside, surrounded by nature trails and scenic views.', 9, 'Country Park, Lake View Trail, Local Winery', 'Limited public transport; nearest bus stop 2 miles away'),
(3, 3, 'Situated in a bustling urban neighborhood known for its modern architecture and cafes.', 7, 'Skyline Tower, Urban Cafe District, Tech Hub', 'Metro line 3, Tram routes 5 and 6'),
(4, 4, 'Beachside location with stunning ocean views and direct access to the shoreline.', 8, 'Sunny Beach, Marina Bay, Surf School', 'Bus routes 15, 25; Ferry terminal nearby'),
(5, 5, 'Luxury area with upscale shops, fine dining, and exclusive clubs.', 9, 'High-End Shopping Mall, Gourmet Restaurants, Private Clubs', 'Metro lines 4 and 5, Shuttle services available'),
(6, 6, 'Nestled in the dense woods, offering a serene environment away from the city.', 10, 'Forest Reserve, Hiking Trails, Bird Watching Centers', 'No public transport; private transport recommended'),
(7, 7, 'Located in a historic district with charming streets and antique shops.', 8, 'Historic Museum, Antique Market, Heritage Theater', 'Metro line 2, Bus routes 30, 40'),
(8, 8, 'Modern waterfront neighborhood with access to boating and water sports.', 7, 'Boat Harbor, Water Sports Center, Lakeside Park', 'Bus routes 18, 28; Bicycle rentals available'),
(9, 9, 'Central location with easy access to business centers and shopping districts.', 8, 'Business Tower, Grand Mall, Convention Center', 'Metro lines 1, 3, and 4; Multiple bus routes'),
(10, 10, 'Suburban area with family-friendly parks and community centers.', 9, 'Family Park, Community Pool, Local Library', 'Bus routes 12, 22; Nearby train station'),
(11, 11, 'Downtown area known for its eclectic mix of restaurants and nightlife.', 7, 'Night Market, Live Music Venues, Diverse Eateries', 'Metro line 1, Bus routes 5, 15'),
(12, 12, 'Exclusive lakeside neighborhood with private docks and boat rentals.', 9, 'Lakeside Marina, Boat Rentals, Scenic Walking Paths', 'Private shuttles; Limited public transport'),
(13, 13, 'Compact urban area with a focus on efficiency and modern living.', 8, 'Tech Park, Innovation Center, Modern Art Spaces', 'Metro line 3, Bus routes 7, 17'),
(14, 14, 'Quiet suburb with lush gardens and well-maintained streets.', 10, 'Community Gardens, Suburban Park, Local Sports Complex', 'Bus routes 14, 24; Nearby tram station'),
(15, 15, 'Eco-friendly neighborhood promoting sustainable living and green spaces.', 9, 'Recycling Center, Green Park, Organic Market', 'Metro line 2, Bus routes 19, 29'),
(16, 16, 'Secluded area within the woods, perfect for nature enthusiasts.', 10, 'Nature Reserve, Hiking Trails, Wildlife Observation Points', 'No public transport; Private transport essential'),
(17, 17, 'Heart of the city with access to major attractions and business hubs.', 8, 'City Hall, Central Business District, Major Theaters', 'Metro lines 1, 4, 5; Numerous bus routes'),
(18, 18, 'Artistic neighborhood with galleries, studios, and creative spaces.', 7, 'Art Galleries, Creative Studios, Local Theaters', 'Metro line 3, Bus routes 6, 16'),
(19, 19, 'Residential area with a mix of historic and modern homes.', 9, 'Historic Homes, Modern Apartments, Local Parks', 'Bus routes 11, 21; Nearby subway station'),
(20, 20, 'Grand estate area with expansive grounds and exclusive facilities.', 10, 'Estate Gardens, Private Golf Course, Luxury Spa', 'Private transport required; No public transport'),
(21, 21, 'Urban area with a minimalist design and modern conveniences.', 8, 'Minimalist Cafes, Design Studios, Tech Hubs', 'Metro line 2, Bus routes 9, 19'),
(22, 22, 'Luxurious lakeside community with high-end amenities and services.', 9, 'Private Docks, Lakeside Restaurants, Wellness Centers', 'Private shuttles; Limited public transport'),
(23, 23, 'Compact and efficient neighborhood close to public transportation.', 8, 'Transit Hub, Small Parks, Local Shops', 'Metro line 1, Bus routes 3, 13'),
(24, 24, 'Quiet suburban bungalow area with scenic landscapes.', 10, 'Quiet Streets, Local Gardens, Suburban Pools', 'Bus routes 10, 20; Nearby train station'),
(25, 25, 'Premium lakeside location with top-tier amenities and beautiful views.', 9, 'Luxury Marina, Lakeside Dining, Exclusive Fitness Center', 'Private transport preferred; Limited public options');

-- ===============================================================
-- Table: Booking
-- This section populates the Booking table with sample data.
-- Each entry includes booking_id, guest_id, accommodation_id,
-- check_in_date, check_out_date, number_of_guests, total_price,
-- booking_date, and status.
-- ===============================================================
INSERT INTO `Booking` (
    `booking_id`, `guest_id`, `accommodation_id`, 
    `check_in_date`, `check_out_date`, `number_of_guests`, 
    `total_price`, `booking_date`, `status`
) VALUES
(1, 1, 1, '2024-10-01', '2024-10-05', 2, 510.00, '2024-09-01 10:00:00', 'cancelled'),
(2, 4, 2, '2024-11-10', '2024-11-15', 5, 500.00, '2024-09-05 14:30:00', 'cancelled'),
(3, 6, 3, '2024-12-20', '2024-12-25', 2, 900.00, '2024-09-10 09:15:00', 'cancelled'),
(4, 9, 4, '2024-10-15', '2024-10-20', 4, 400.00, '2024-09-12 16:45:00', 'cancelled'),
(5, 11, 5, '2024-11-05', '2024-11-10', 6, 1800.00, '2024-09-15 11:20:00', 'cancelled'),
(6, 14, 6, '2024-12-01', '2024-12-07', 3, 300.00, '2024-09-18 08:50:00', 'cancelled'),
(7, 16, 7, '2024-10-25', '2024-10-30', 2, 500.00, '2024-09-20 13:10:00', 'cancelled'),
(8, 18, 8, '2024-11-15', '2024-11-20', 5, 900.00, '2024-09-22 17:30:00', 'cancelled'),
(9, 20, 9, '2024-12-10', '2024-12-15', 3, 390.00, '2024-09-25 12:00:00', 'cancelled'),
(10, 22, 10, '2024-10-05', '2024-10-12', 4, 1680.00, '2024-09-28 19:45:00', 'cancelled'),
(11, 1, 11, '2024-11-20', '2024-11-25', 2, 400.00, '2024-09-30 07:30:00', 'cancelled'),
(12, 4, 12, '2024-12-15', '2024-12-22', 6, 3360.00, '2024-10-02 10:15:00', 'cancelled'),
(13, 6, 13, '2024-10-18', '2024-10-22', 2, 380.00, '2024-10-05 14:00:00', 'cancelled'),
(14, 9, 14, '2024-11-25', '2024-11-30', 4, 1440.00, '2024-10-08 09:25:00', 'cancelled'),
(15, 11, 15, '2024-12-05', '2024-12-12', 3, 980.00, '2024-10-10 16:40:00', 'cancelled'),
(16, 14, 16, '2024-10-12', '2024-10-18', 2, 330.00, '2024-10-12 11:55:00', 'cancelled'),
(17, 16, 17, '2024-11-01', '2024-11-06', 5, 1000.00, '2024-10-15 13:35:00', 'cancelled'),
(18, 18, 18, '2024-12-20', '2024-12-27', 3, 1275.00, '2024-10-18 08:20:00', 'cancelled'),
(19, 20, 19, '2024-10-08', '2024-10-14', 4, 760.00, '2024-10-20 15:10:00', 'cancelled'),
(20, 22, 20, '2024-11-18', '2024-11-25', 6, 3600.00, '2024-10-22 17:50:00', 'cancelled'),
(21, 1, 21, '2024-12-01', '2024-12-05', 2, 220.00, '2024-10-25 12:30:00', 'cancelled'),
(22, 4, 22, '2024-10-20', '2024-10-25', 5, 1750.00, '2024-10-28 14:45:00', 'cancelled'),
(23, 6, 23, '2024-11-10', '2024-11-15', 3, 350.00, '2024-10-30 09:00:00', 'cancelled'),
(24, 9, 24, '2024-12-05', '2024-12-12', 4, 1260.00, '2024-11-02 16:15:00', 'cancelled'),
(25, 11, 25, '2024-10-15', '2024-10-20', 6, 2550.00, '2024-11-05 10:50:00', 'cancelled'),
(26, 1, 1, '2024-12-15', '2024-12-20', 2, 520.00, '2024-11-01 10:00:00', 'confirmed'),
(27, 4, 2, '2024-12-22', '2024-12-28', 5, 1400.00, '2024-11-03 14:30:00', 'pending'),
(28, 6, 3, '2025-01-05', '2025-01-10', 2, 900.00, '2024-11-05 09:15:00', 'confirmed'),
(29, 9, 4, '2024-12-30', '2025-01-04', 4, 1100.00, '2024-11-08 16:45:00', 'confirmed'),
(30, 11, 5, '2024-12-12', '2024-12-18', 6, 1850.00, '2024-11-10 11:20:00', 'confirmed'),
(31, 14, 6, '2025-01-10', '2025-01-17', 3, 780.00, '2024-11-12 08:50:00', 'pending'),
(32, 16, 7, '2025-01-15', '2025-01-20', 2, 510.00, '2024-11-15 13:10:00', 'confirmed'),
(33, 18, 8, '2025-01-01', '2025-01-06', 5, 1850.00, '2024-11-18 17:30:00', 'confirmed'),
(34, 20, 9, '2024-12-18', '2024-12-24', 3, 400.00, '2024-11-20 12:00:00', 'pending'),
(35, 22, 10, '2025-01-12', '2025-01-18', 4, 1700.00, '2024-11-22 19:45:00', 'confirmed'),
(36, 1, 11, '2025-01-22', '2025-01-27', 2, 410.00, '2024-11-25 07:30:00', 'confirmed'),
(37, 4, 12, '2024-12-29', '2025-01-04', 6, 3400.00, '2024-11-27 10:15:00', 'pending'),
(38, 6, 13, '2025-01-08', '2025-01-12', 2, 390.00, '2024-12-01 14:00:00', 'confirmed'),
(39, 9, 14, '2024-12-25', '2024-12-31', 4, 740.00, '2024-12-03 09:25:00', 'confirmed'),
(40, 11, 15, '2025-01-05', '2025-01-12', 3, 1000.00, '2024-12-05 16:40:00', 'pending'),
(41, 14, 16, '2025-01-18', '2025-01-24', 2, 340.00, '2024-12-08 11:55:00', 'confirmed'),
(42, 16, 17, '2024-12-10', '2024-12-15', 5, 1050.00, '2024-12-10 13:35:00', 'confirmed'),
(43, 18, 18, '2025-01-02', '2025-01-08', 3, 1300.00, '2024-12-12 08:20:00', 'confirmed'),
(44, 20, 19, '2025-01-10', '2025-01-17', 4, 800.00, '2024-12-14 15:10:00', 'confirmed'),
(45, 22, 20, '2024-12-28', '2025-01-03', 6, 3650.00, '2024-12-16 17:50:00', 'pending'),
(46, 1, 21, '2024-12-22', '2024-12-27', 2, 230.00, '2024-12-18 12:30:00', 'confirmed'),
(47, 4, 22, '2025-01-14', '2025-01-19', 5, 1800.00, '2024-12-21 14:45:00', 'pending'),
(48, 6, 23, '2024-12-05', '2024-12-12', 3, 360.00, '2024-12-25 09:00:00', 'confirmed'),
(49, 9, 24, '2025-01-11', '2025-01-18', 4, 1300.00, '2024-12-28 16:15:00', 'confirmed'),
(50, 11, 25, '2025-01-07', '2025-01-12', 6, 2600.00, '2024-12-30 10:50:00', 'confirmed');

-- ===============================================================
-- Table: Review
-- This section populates the Review table with sample data.
-- Each entry includes review_id, reviewer_id, reviewee_id,
-- booking_id, rating, review_text, and review_date.
-- ===============================================================
INSERT INTO `Review` (
    `review_id`, `reviewer_id`, `reviewee_id`, 
    `booking_id`, `rating`, `review_text`, `review_date`
) VALUES
-- Guest-to-Host Reviews
(1, 1, 2, 1, 'Guest-to-Host', 5, 'Alice had a wonderful stay! The apartment was clean and exactly as described.', '2024-10-05'),
(2, 4, 5, 2, 'Guest-to-Host', 4, 'Diana had a pleasant stay. The country house was spacious and comfortable.', '2024-11-15'),
(3, 9, 10, 4, 'Guest-to-Host', 5, 'Ian had an excellent experience. The bungalow was perfect for our family.', '2024-10-20'),
(4, 11, 12, 5, 'Guest-to-Host', 5, 'Kevin had a luxurious experience at the villa. Well-maintained and beautiful.', '2024-11-10'),
(5, 1, 16, 6, 'Guest-to-Host', 4, 'Alice had to cancel due to personal reasons.', '2024-12-07'),
(6, 16, 17, 8, 'Guest-to-Host', 5, 'Quentin was an outstanding host. The suite was elegant and comfortable.', '2024-11-20'),
(7, 18, 19, 9, 'Guest-to-Host', 3, 'Rachel enjoyed her stay, but there were some issues with cleanliness.', '2024-12-15'),
(8, 20, 2, 10, 'Guest-to-Host', 5, 'Victor had a fantastic stay with excellent amenities.', '2024-10-12'),
(9, 1, 21, 11, 'Guest-to-Host', 4, 'Alice was a courteous guest. The studio was compact but had all essentials.', '2024-11-25'),
(10, 4, 5, 12, 'Guest-to-Host', 5, 'Diana had an exceptional experience at Edwards lakeside villa.', '2024-12-22'),
(11, 6, 14, 13, 'Guest-to-Host', 4, 'Nina was a friendly host. The cottage was eco-friendly and comfortable.', '2024-10-22'),
(12, 9, 10, 15, 'Guest-to-Host', 5, 'Ian had a delightful stay at the eco-friendly bungalow.', '2024-12-12'),
(13, 11, 12, 16, 'Guest-to-Host', 4, 'Kevin enjoyed his stay at Lilys treehouse. It was unique and well-maintained.', '2024-10-18'),
(14, 4, 17, 17, 'Guest-to-Host', 5, 'Diana had a wonderful experience at Quentins city center suite.', '2024-11-06'),
(15, 16, 19, 18, 'Guest-to-Host', 5, 'Paula had a great stay at Steves artist loft. Highly inspiring!', '2024-12-27'),
(16, 18, 19, 20, 'Guest-to-Host', 5, 'Rachel had a luxurious stay at Steves premium lakeside cabin. Highly recommended!', '2024-11-25'),
(17, 1, 21, 21, 'Guest-to-Host', 4, 'Alice provided a minimalist studio that was clean and efficient.', '2024-12-05'),
(18, 4, 5, 22, 'Guest-to-Host', 5, 'Diana enjoyed her stay at Edwards modern family villa. Perfect for extended family.', '2024-10-25'),
(19, 6, 14, 23, 'Guest-to-Host', 4, 'Nina was a considerate host. The compact city flat was conveniently located.', '2024-11-15'),
(20, 9, 10, 24, 'Guest-to-Host', 5, 'Ian had a peaceful stay at Julias suburban bungalow. Everything was perfect.', '2024-12-12'),
-- Host-to-Guest Reviews
(21, 2, 1, 1, 'Host-to-Guest', 5, 'Alice was a respectful and tidy guest. Highly recommended!', '2024-10-06'),
(22, 5, 4, 2, 'Host-to-Guest', 4, 'Diana was a pleasant guest. Left the country house in good condition.', '2024-11-16'),
(23, 10, 9, 4, 'Host-to-Guest', 5, 'Ian was an excellent guest. Took great care of the bungalow.', '2024-10-21'),
(24, 12, 11, 5, 'Host-to-Guest', 5, 'Kevin was a wonderful guest. Enjoyed hosting him at the villa.', '2024-11-11'),
(25, 14, 16, 6, 'Host-to-Guest', 4, 'Paula was a friendly guest. Appreciated her respect for the cabin rules.', '2024-12-08');

-- ===============================================================
-- Table: Message
-- This section populates the Message table with sample data.
-- Each entry includes message_id, sender_id, receiver_id,
-- booking_id (optional), message_text, sent_date, and is_read.
-- ===============================================================
INSERT INTO `Message` (
    `message_id`, `sender_id`, `receiver_id`, 
    `booking_id`, `message_text`, `sent_date`, `is_read`
) VALUES
-- General Messages
(1, 1, 2, NULL, 'Hi Bob, I have a question about your apartment.', '2024-09-25 09:00:00', FALSE),
(2, 2, 1, NULL, 'Hello Alice, feel free to ask any questions you have!', '2024-09-25 09:05:00', TRUE),
(3, 4, 5, NULL, 'Edward, is the country house available for the first week of December?', '2024-09-26 10:15:00', FALSE),
(4, 5, 4, NULL, 'Hi Diana, yes, the house is available from December 1st.', '2024-09-26 10:20:00', TRUE),
(5, 7, 3, NULL, 'Charlie, please review the latest update to the platform.', '2024-09-27 11:30:00', TRUE),
(6, 3, 7, NULL, 'Sure George, I will look into it today.', '2024-09-27 11:45:00', TRUE),
(7, 10, 9, NULL, 'Ian, your booking has been confirmed.', '2024-09-28 12:00:00', TRUE),
(8, 9, 10, NULL, 'Thank you Julia! Looking forward to my stay.', '2024-09-28 12:15:00', TRUE),
(9, 12, 11, NULL, 'Kevin, could you provide more photos of the villa?', '2024-09-29 13:25:00', FALSE),
(10, 11, 12, NULL, 'Of course Lily, I will upload them by tomorrow.', '2024-09-29 13:30:00', TRUE),
-- Booking-Related Messages
(11, 1, 2, 1, 'Hi Bob, is parking available at the apartment?', '2024-10-01 14:00:00', TRUE),
(12, 2, 1, 1, 'Yes Alice, there is free parking available.', '2024-10-01 14:10:00', TRUE),
(13, 4, 5, 2, 'Edward, do you allow late check-ins?', '2024-11-10 15:20:00', FALSE),
(14, 5, 4, 2, 'Hi Diana, yes, late check-ins are possible with prior notice.', '2024-11-10 15:30:00', TRUE),
(15, 9, 10, 4, 'Julia, can I request an early check-in on October 15?', '2024-10-15 16:40:00', FALSE),
(16, 10, 9, 4, 'Hi Ian, early check-in is available at 1 PM instead of 3 PM.', '2024-10-15 16:50:00', TRUE),
(17, 11, 12, 5, 'Lily, can you provide the Wi-Fi password before my arrival?', '2024-11-05 17:55:00', FALSE),
(18, 12, 11, 5, 'Sure Kevin, I will send it to you a day before your stay.', '2024-11-05 18:05:00', TRUE),
(19, 14, 16, 6, 'Paula, is there a fireplace in the cabin?', '2024-12-01 19:15:00', FALSE),
(20, 16, 14, 6, 'Hi Paula, yes, there is a working fireplace available for use.', '2024-12-01 19:25:00', TRUE),
-- Additional Messages
(21, 18, 19, 18, 'Steve, can you recommend any local restaurants nearby?', '2024-12-20 20:35:00', FALSE),
(22, 19, 18, 18, 'Hi Rachel, sure! There are several great places within walking distance.', '2024-12-20 20:45:00', TRUE),
(23, 20, 22, 20, 'Victor, please let me know your arrival time.', '2024-11-18 21:55:00', FALSE),
(24, 22, 20, 20, 'Hi Victor, I will be arriving around 3 PM.', '2024-11-18 22:05:00', TRUE),
(25, 21, 1, NULL, 'Alice, your wishlist has been updated with new accommodations.', '2024-12-01 23:15:00', TRUE);

-- ===============================================================
-- Table: Amenity
-- This section populates the Amenity table with sample data.
-- Each entry includes amenity_id, name, and description.
-- ===============================================================
INSERT INTO `Amenity` (`amenity_id`, `name`, `description`) VALUES
(1, 'Wi-Fi', 'High-speed wireless internet access available throughout the property.'),
(2, 'Air Conditioning', 'Central air conditioning system to keep the property cool and comfortable.'),
(3, 'Heating', 'Efficient heating system to maintain a warm environment during colder months.'),
(4, 'Kitchen', 'Fully equipped kitchen with appliances including stove, refrigerator, and microwave.'),
(5, 'Washer', 'In-unit washing machine for guest use.'),
(6, 'Dryer', 'In-unit dryer available for guest use.'),
(7, 'Free Parking', 'Complimentary parking space available for guests.'),
(8, 'TV', 'Flat-screen television with cable channels and streaming capabilities.'),
(9, 'Iron', 'Iron and ironing board provided for guest convenience.'),
(10, 'Hair Dryer', 'Hair dryer available in the bathroom.'),
(11, 'Pool', 'Access to a shared swimming pool.'),
(12, 'Gym', 'On-site fitness center available for guests.'),
(13, 'Breakfast', 'Complimentary breakfast provided each morning.'),
(14, 'Pet Friendly', 'Pets are allowed with prior approval.'),
(15, 'Smoke-Free', 'Property is designated as a smoke-free environment.'),
(16, 'Garden', 'Private or shared garden space for relaxation and outdoor activities.'),
(17, 'Fireplace', 'Functional fireplace available in the living area.'),
(18, 'Balcony', 'Private balcony with seating area and scenic views.'),
(19, 'Cable TV', 'Cable television services available in the property.'),
(20, 'Smart TV', 'Smart TV with access to streaming services like Netflix and Hulu.'),
(21, 'Workspace', 'Dedicated workspace with desk and ergonomic chair.'),
(22, 'Dishwasher', 'Dishwasher available in the kitchen for guest use.'),
(23, 'Coffee Maker', 'Coffee maker provided in the kitchen area.'),
(24, 'Bicycle Rental', 'Bicycles available for rent to explore the surrounding area.'),
(25, 'Air Purifier', 'Air purifier installed to ensure clean and fresh indoor air.');

-- ===============================================================
-- Table: AccommodationAmenity
-- This section populates the AccommodationAmenity table with sample data.
-- Each entry includes accommodation_amenity_id, accommodation_id,
-- and amenity_id.
-- ===============================================================
INSERT INTO `AccommodationAmenity` (`accommodation_amenity_id`, `accommodation_id`, `amenity_id`) VALUES
(1, 1, 1),   -- Wi-Fi
(2, 1, 2),   -- Air Conditioning
(3, 1, 8),   -- TV
(4, 2, 1),   -- Wi-Fi
(5, 2, 4),   -- Kitchen
(6, 2, 7),   -- Free Parking
(7, 3, 1),   -- Wi-Fi
(8, 3, 3),   -- Heating
(9, 3, 22),  -- Workspace
(10, 4, 1),  -- Wi-Fi
(11, 4, 4),  -- Kitchen
(12, 4, 14), -- Pet Friendly
(13, 5, 1),  -- Wi-Fi
(14, 5, 2),  -- Air Conditioning
(15, 5, 11), -- Pool
(16, 6, 1),  -- Wi-Fi
(17, 6, 4),  -- Kitchen
(18, 6, 10), -- Hair Dryer
(19, 7, 1),  -- Wi-Fi
(20, 7, 5),  -- Washer
(21, 7, 6),  -- Dryer
(22, 8, 1),  -- Wi-Fi
(23, 8, 4),  -- Kitchen
(24, 8, 19), -- Smart TV
(25, 9, 1);  -- Wi-Fi

-- ===============================================================
-- Table: Photo
-- This section populates the Photo table with sample data.
-- Each entry includes photo_id, accommodation_id, photo_url,
-- caption, and is_primary.
-- ===============================================================
INSERT INTO `Photo` (
    `photo_id`, `accommodation_id`, `photo_url`, 
    `caption`, `is_primary`
) VALUES
-- Accommodation 1
(1, 1, 'http://example.com/photos/accommodation1_photo1.jpg', 'Living room with modern furnishings.', TRUE),
(2, 1, 'http://example.com/photos/accommodation1_photo2.jpg', 'Spacious bedroom with queen-sized bed.', FALSE),
(3, 1, 'http://example.com/photos/accommodation1_photo3.jpg', 'Fully equipped kitchen area.', FALSE),

-- Accommodation 2
(4, 2, 'http://example.com/photos/accommodation2_photo1.jpg', 'Front view of the country house.', TRUE),
(5, 2, 'http://example.com/photos/accommodation2_photo2.jpg', 'Beautiful garden surrounding the house.', FALSE),
(6, 2, 'http://example.com/photos/accommodation2_photo3.jpg', 'Cozy dining area with a large table.', FALSE),

-- Accommodation 3
(7, 3, 'http://example.com/photos/accommodation3_photo1.jpg', 'Modern loft with city skyline views.', TRUE),
(8, 3, 'http://example.com/photos/accommodation3_photo2.jpg', 'Open-plan living and workspace area.', FALSE),
(9, 3, 'http://example.com/photos/accommodation3_photo3.jpg', 'Stylish bathroom with contemporary fixtures.', FALSE),

-- Accommodation 4
(10, 4, 'http://example.com/photos/accommodation4_photo1.jpg', 'Beachside bungalow exterior.', TRUE),
(11, 4, 'http://example.com/photos/accommodation4_photo2.jpg', 'Comfortable bedroom with ocean view.', FALSE),
(12, 4, 'http://example.com/photos/accommodation4_photo3.jpg', 'Relaxing living room with beach decor.', FALSE),

-- Accommodation 5
(13, 5, 'http://example.com/photos/accommodation5_photo1.jpg', 'Luxurious penthouse suite interior.', TRUE),
(14, 5, 'http://example.com/photos/accommodation5_photo2.jpg', 'Spacious balcony with panoramic views.', FALSE),
(15, 5, 'http://example.com/photos/accommodation5_photo3.jpg', 'Elegant bedroom with king-sized bed.', FALSE),

-- Accommodation 6
(16, 6, 'http://example.com/photos/accommodation6_photo1.jpg', 'Rustic cabin surrounded by trees.', TRUE),
(17, 6, 'http://example.com/photos/accommodation6_photo2.jpg', 'Cozy living area with a fireplace.', FALSE),
(18, 6, 'http://example.com/photos/accommodation6_photo3.jpg', 'Private deck overlooking the forest.', FALSE),

-- Accommodation 7
(19, 7, 'http://example.com/photos/accommodation7_photo1.jpg', 'Charming studio apartment exterior.', TRUE),
(20, 7, 'http://example.com/photos/accommodation7_photo2.jpg', 'Compact living space with modern amenities.', FALSE),
(21, 7, 'http://example.com/photos/accommodation7_photo3.jpg', 'Functional kitchen area with appliances.', FALSE),

-- Accommodation 8
(22, 8, 'http://example.com/photos/accommodation8_photo1.jpg', 'Elegant townhouse living room.', TRUE),
(23, 8, 'http://example.com/photos/accommodation8_photo2.jpg', 'Well-appointed kitchen with dining area.', FALSE),
(24, 8, 'http://example.com/photos/accommodation8_photo3.jpg', 'Private balcony with garden views.', FALSE),

-- Accommodation 9
(25, 9, 'http://example.com/photos/accommodation9_photo1.jpg', 'Modern minimalist flat interior.', TRUE),
(26, 9, 'http://example.com/photos/accommodation9_photo2.jpg', 'Spacious bedroom with minimalist design.', FALSE),
(27, 9, 'http://example.com/photos/accommodation9_photo3.jpg', 'Open-concept living and dining area.', FALSE),

-- Accommodation 10
(28, 10, 'http://example.com/photos/accommodation10_photo1.jpg', 'Suburban family home exterior.', TRUE),
(29, 10, 'http://example.com/photos/accommodation10_photo2.jpg', 'Large backyard with playground.', FALSE),
(30, 10, 'http://example.com/photos/accommodation10_photo3.jpg', 'Comfortable living room with family-friendly decor.', FALSE),

-- Accommodation 11
(31, 11, 'http://example.com/photos/accommodation11_photo1.jpg', 'Downtown chic condo exterior.', TRUE),
(32, 11, 'http://example.com/photos/accommodation11_photo2.jpg', 'Stylish living space with modern furnishings.', FALSE),
(33, 11, 'http://example.com/photos/accommodation11_photo3.jpg', 'Compact kitchen with all necessary appliances.', FALSE),

-- Accommodation 12
(34, 12, 'http://example.com/photos/accommodation12_photo1.jpg', 'Lakefront villa with private dock.', TRUE),
(35, 12, 'http://example.com/photos/accommodation12_photo2.jpg', 'Spacious living room overlooking the lake.', FALSE),
(36, 12, 'http://example.com/photos/accommodation12_photo3.jpg', 'Modern kitchen with lake views.', FALSE),

-- Accommodation 13
(37, 13, 'http://example.com/photos/accommodation13_photo1.jpg', 'Downtown micro apartment exterior.', TRUE),
(38, 13, 'http://example.com/photos/accommodation13_photo2.jpg', 'Compact living space with efficient design.', FALSE),
(39, 13, 'http://example.com/photos/accommodation13_photo3.jpg', 'Functional kitchenette with essential appliances.', FALSE),

-- Accommodation 14
(40, 14, 'http://example.com/photos/accommodation14_photo1.jpg', 'Suburban family bungalow exterior.', TRUE),
(41, 14, 'http://example.com/photos/accommodation14_photo2.jpg', 'Spacious backyard with garden.', FALSE),
(42, 14, 'http://example.com/photos/accommodation14_photo3.jpg', 'Comfortable living room with family-oriented decor.', FALSE),

-- Accommodation 15
(43, 15, 'http://example.com/photos/accommodation15_photo1.jpg', 'Eco-friendly cottage surrounded by greenery.', TRUE),
(44, 15, 'http://example.com/photos/accommodation15_photo2.jpg', 'Sustainable living space with modern amenities.', FALSE),
(45, 15, 'http://example.com/photos/accommodation15_photo3.jpg', 'Cozy bedroom with eco-friendly furnishings.', FALSE),

-- Accommodation 16
(46, 16, 'http://example.com/photos/accommodation16_photo1.jpg', 'Secluded treehouse nestled in the woods.', TRUE),
(47, 16, 'http://example.com/photos/accommodation16_photo2.jpg', 'Unique living space with panoramic forest views.', FALSE),
(48, 16, 'http://example.com/photos/accommodation16_photo3.jpg', 'Compact kitchen area with necessary appliances.', FALSE),

-- Accommodation 17
(49, 17, 'http://example.com/photos/accommodation17_photo1.jpg', 'City center suite exterior.', TRUE),
(50, 17, 'http://example.com/photos/accommodation17_photo2.jpg', 'Luxurious living space with city skyline views.', FALSE),
(51, 17, 'http://example.com/photos/accommodation17_photo3.jpg', 'Elegant bedroom with high-end furnishings.', FALSE),

-- Accommodation 18
(52, 18, 'http://example.com/photos/accommodation18_photo1.jpg', 'Artist loft with creative design elements.', TRUE),
(53, 18, 'http://example.com/photos/accommodation18_photo2.jpg', 'Spacious workspace with artistic decor.', FALSE),
(54, 18, 'http://example.com/photos/accommodation18_photo3.jpg', 'Modern kitchen area with stylish appliances.', FALSE),

-- Accommodation 19
(55, 19, 'http://example.com/photos/accommodation19_photo1.jpg', 'Residential area home exterior.', TRUE),
(56, 19, 'http://example.com/photos/accommodation19_photo2.jpg', 'Living room with a mix of historic and modern decor.', FALSE),
(57, 19, 'http://example.com/photos/accommodation19_photo3.jpg', 'Spacious backyard with landscaped gardens.', FALSE),

-- Accommodation 20
(58, 20, 'http://example.com/photos/accommodation20_photo1.jpg', 'Grand estate exterior with expansive grounds.', TRUE),
(59, 20, 'http://example.com/photos/accommodation20_photo2.jpg', 'Luxurious living room with high ceilings.', FALSE),
(60, 20, 'http://example.com/photos/accommodation20_photo3.jpg', 'Elegant bedroom with premium furnishings.', FALSE),

-- Accommodation 21
(61, 21, 'http://example.com/photos/accommodation21_photo1.jpg', 'Modern minimalist flat exterior.', TRUE),
(62, 21, 'http://example.com/photos/accommodation21_photo2.jpg', 'Clean and efficient living space.', FALSE),
(63, 21, 'http://example.com/photos/accommodation21_photo3.jpg', 'Functional kitchen area with essential appliances.', FALSE),

-- Accommodation 22
(64, 22, 'http://example.com/photos/accommodation22_photo1.jpg', 'Luxury lakeside cabin exterior.', TRUE),
(65, 22, 'http://example.com/photos/accommodation22_photo2.jpg', 'Spacious living room with lake views.', FALSE),
(66, 22, 'http://example.com/photos/accommodation22_photo3.jpg', 'Modern kitchen with high-end appliances.', FALSE),

-- Accommodation 23
(67, 23, 'http://example.com/photos/accommodation23_photo1.jpg', 'Compact city flat exterior.', TRUE),
(68, 23, 'http://example.com/photos/accommodation23_photo2.jpg', 'Efficient living space with modern design.', FALSE),
(69, 23, 'http://example.com/photos/accommodation23_photo3.jpg', 'Functional kitchenette with essential appliances.', FALSE),

-- Accommodation 24
(70, 24, 'http://example.com/photos/accommodation24_photo1.jpg', 'Suburban bungalow exterior.', TRUE),
(71, 24, 'http://example.com/photos/accommodation24_photo2.jpg', 'Cozy living room with comfortable furnishings.', FALSE),
(72, 24, 'http://example.com/photos/accommodation24_photo3.jpg', 'Spacious backyard with landscaped gardens.', FALSE),

-- Accommodation 25
(73, 25, 'http://example.com/photos/accommodation25_photo1.jpg', 'Premium lakeside cabin exterior.', TRUE),
(74, 25, 'http://example.com/photos/accommodation25_photo2.jpg', 'Luxurious living room with lake views.', FALSE),
(75, 25, 'http://example.com/photos/accommodation25_photo3.jpg', 'Modern kitchen with high-end appliances.', FALSE);

-- ===============================================================
-- Table: Availability
-- This section populates the Availability table with sample data.
-- Each entry includes availability_id, accommodation_id, date,
-- is_available, and price.
-- ===============================================================
INSERT INTO `Availability` (
    `availability_id`, `accommodation_id`, `date`, 
    `is_available`, `price`
) VALUES
-- Accommodation 1
(1, 1, '2024-10-01', FALSE, 120.00),
(2, 1, '2024-10-02', FALSE, 120.00),
(3, 1, '2024-10-03', FALSE, 120.00),
(4, 1, '2024-10-04', FALSE, 120.00),
(5, 1, '2024-10-05', TRUE, 130.00),

-- Accommodation 2
(6, 2, '2024-11-10', FALSE, 250.00),
(7, 2, '2024-11-11', FALSE, 250.00),
(8, 2, '2024-11-12', FALSE, 250.00),
(9, 2, '2024-11-13', FALSE, 250.00),
(10, 2, '2024-11-14', FALSE, 250.00),

-- Accommodation 3
(11, 3, '2024-12-20', FALSE, 180.00),
(12, 3, '2024-12-21', FALSE, 180.00),
(13, 3, '2024-12-22', FALSE, 180.00),
(14, 3, '2024-12-23', FALSE, 180.00),
(15, 3, '2024-12-24', TRUE, 190.00),

-- Accommodation 4
(16, 4, '2024-10-15', FALSE, 200.00),
(17, 4, '2024-10-16', FALSE, 200.00),
(18, 4, '2024-10-17', FALSE, 200.00),
(19, 4, '2024-10-18', FALSE, 200.00),
(20, 4, '2024-10-19', TRUE, 210.00),

-- Accommodation 5
(21, 5, '2024-11-05', FALSE, 300.00),
(22, 5, '2024-11-06', FALSE, 300.00),
(23, 5, '2024-11-07', FALSE, 300.00),
(24, 5, '2024-11-08', FALSE, 300.00),
(25, 5, '2024-11-09', TRUE, 310.00);

-- ===============================================================
-- Table: Payment
-- This section populates the Payment table with corrected and verified data.
-- Each entry includes payment_id, user_id, booking_id,
-- amount, currency, payment_method, payment_date, and status.
-- ===============================================================
INSERT INTO `Payment` (
    `payment_id`, `user_id`, `booking_id`, 
    `amount`, `currency`, `payment_method`, 
    `payment_date`, `status`
) VALUES
-- Booking 1: Alice (User ID 1) booking Accommodation 1
(1, 1, 1, 200.00, 'USD', 'Credit Card', '2024-09-25 10:00:00', 'completed'), -- Deposit
(2, 1, 1, 310.00, 'USD', 'Credit Card', '2024-09-30 15:30:00', 'completed'), -- Final Payment

-- Booking 2: Diana (User ID 4) booking Accommodation 2
(3, 4, 2, 500.00, 'USD', 'PayPal', '2024-09-26 14:00:00', 'completed'), -- Full Payment

-- Booking 4: Ian (User ID 9) booking Accommodation 4
(4, 9, 4, 400.00, 'USD', 'Bank Transfer', '2024-09-28 12:00:00', 'completed'), -- Full Payment

-- Booking 5: Kevin (User ID 11) booking Accommodation 5
(5, 11, 5, 900.00, 'USD', 'Credit Card', '2024-09-30 07:30:00', 'completed'), -- Deposit
(6, 11, 5, 900.00, 'USD', 'Credit Card', '2024-10-05 12:00:00', 'completed'), -- Final Payment

-- Booking 6: Paula (User ID 14) booking Accommodation 6
(7, 14, 6, 300.00, 'USD', 'Credit Card', '2024-10-12 11:55:00', 'completed'), -- Full Payment

-- Booking 7: Quentin (User ID 16) booking Accommodation 7
(8, 16, 7, 250.00, 'USD', 'PayPal', '2024-10-15 13:35:00', 'completed'), -- Deposit
(9, 16, 7, 250.00, 'USD', 'PayPal', '2024-10-20 10:00:00', 'completed'), -- Final Payment

-- Booking 8: Victor (User ID 22) booking Accommodation 8
(10, 22, 8, 900.00, 'USD', 'Credit Card', '2024-10-25 14:45:00', 'completed'), -- Full Payment

-- Booking 9: Tina (User ID 20) booking Accommodation 9
(11, 20, 9, 390.00, 'USD', 'Credit Card', '2024-10-30 09:00:00', 'completed'), -- Full Payment

-- Booking 10: Victor (User ID 22) booking Accommodation 10
(12, 22, 10, 1680.00, 'USD', 'Bank Transfer', '2024-10-28 19:45:00', 'completed'), -- Full Payment

-- Booking 11: Alice (User ID 1) booking Accommodation 11
(13, 1, 11, 400.00, 'USD', 'Credit Card', '2024-10-06 10:50:00', 'completed'), -- Full Payment

-- Booking 12: Diana (User ID 4) booking Accommodation 12
(14, 4, 12, 1680.00, 'USD', 'PayPal', '2024-10-02 10:15:00', 'completed'), -- Deposit
(15, 4, 12, 1680.00, 'USD', 'PayPal', '2024-10-07 16:30:00', 'completed'), -- Final Payment

-- Booking 13: Nina (User ID 6) booking Accommodation 13
(16, 6, 13, 380.00, 'USD', 'Credit Card', '2024-10-05 14:00:00', 'completed'), -- Full Payment

-- Booking 14: Ian (User ID 9) booking Accommodation 14
(17, 9, 14, 720.00, 'USD', 'Credit Card', '2024-10-08 09:25:00', 'completed'), -- Deposit
(18, 9, 14, 720.00, 'USD', 'Credit Card', '2024-10-12 10:00:00', 'completed'), -- Final Payment

-- Booking 15: Kevin (User ID 11) booking Accommodation 15
(19, 11, 15, 980.00, 'USD', 'Credit Card', '2024-10-10 16:40:00', 'completed'), -- Full Payment

-- Booking 16: Paula (User ID 14) booking Accommodation 16
(20, 14, 16, 330.00, 'USD', 'Credit Card', '2024-10-12 11:55:00', 'completed'), -- Full Payment

-- Booking 17: Quentin (User ID 16) booking Accommodation 17
(21, 16, 17, 1000.00, 'USD', 'PayPal', '2024-10-15 13:35:00', 'completed'), -- Full Payment

-- Booking 18: Rachel (User ID 18) booking Accommodation 18
(22, 18, 18, 1275.00, 'USD', 'Credit Card', '2024-10-18 08:20:00', 'completed'), -- Full Payment

-- Booking 20: Victor (User ID 22) booking Accommodation 20
(23, 22, 20, 3600.00, 'USD', 'Credit Card', '2024-11-25 22:05:00', 'completed'), -- Full Payment

-- Booking 21: Alice (User ID 1) booking Accommodation 21
(24, 1, 21, 220.00, 'USD', 'Credit Card', '2024-10-25 12:30:00', 'completed'), -- Full Payment

-- Booking 22: Diana (User ID 4) booking Accommodation 22
(25, 4, 22, 1750.00, 'USD', 'PayPal', '2024-10-28 14:45:00', 'completed'); -- Full Payment

-- ===============================================================
-- Table: Wishlist
-- This section populates the Wishlist table with sample data.
-- Each entry includes wishlist_id, user_id, name, and creation_date.
-- ===============================================================
INSERT INTO `Wishlist` (
    `wishlist_id`, `user_id`, `name`, `creation_date`
) VALUES
(1, 1, 'Summer Getaways', '2024-09-01 10:00:00'),
(2, 1, 'Winter Retreats', '2024-09-05 12:30:00'),
(3, 4, 'Family Vacations', '2024-09-10 09:15:00'),
(4, 4, 'Adventure Trips', '2024-09-12 14:45:00'),
(5, 6, 'Romantic Escapes', '2024-09-15 11:20:00'),
(6, 6, 'Beach Holidays', '2024-09-18 16:00:00'),
(7, 9, 'Business Travels', '2024-09-20 08:50:00'),
(8, 9, 'Cultural Experiences', '2024-09-22 13:10:00'),
(9, 11, 'Eco-Friendly Stays', '2024-09-25 17:30:00'),
(10, 11, 'Luxury Resorts', '2024-09-28 12:00:00'),
(11, 1, 'Mountain Adventures', '2024-09-30 07:30:00'),
(12, 1, 'City Breaks', '2024-10-02 10:15:00'),
(13, 16, 'Pet-Friendly Homes', '2024-10-05 14:00:00'),
(14, 16, 'Unique Stays', '2024-10-08 09:25:00'),
(15, 18, 'Artistic Retreats', '2024-10-10 16:40:00'),
(16, 18, 'Lakeside Cabins', '2024-10-12 11:55:00'),
(17, 20, 'Historical Places', '2024-10-15 13:35:00'),
(18, 20, 'Spa and Wellness', '2024-10-18 08:20:00'),
(19, 22, 'Ski Resorts', '2024-10-20 15:10:00'),
(20, 22, 'Beachfront Villas', '2024-10-22 17:50:00'),
(21, 1, 'Weekend Getaways', '2024-10-25 12:30:00'),
(22, 4, 'Budget-Friendly Stays', '2024-10-28 14:45:00'),
(23, 6, 'Remote Workspaces', '2024-10-30 09:00:00'),
(24, 9, 'Culinary Tours', '2024-11-02 16:15:00'),
(25, 11, 'Festive Celebrations', '2024-11-05 10:50:00');

-- ===============================================================
-- Table: WishlistItem
-- This section populates the WishlistItem table with sample data.
-- Each entry includes wishlist_item_id, wishlist_id, accommodation_id,
-- and added_date.
-- ===============================================================
INSERT INTO `WishlistItem` (
    `wishlist_item_id`, `wishlist_id`, `accommodation_id`, 
    `added_date`
) VALUES
-- Wishlist 1: Summer Getaways (User ID 1)
(1, 1, 4, '2024-09-01 10:05:00'), -- Accommodation 4: Beachside Bungalow
(2, 1, 8, '2024-09-01 10:10:00'), -- Accommodation 8: Elegant Townhouse
(3, 1, 12, '2024-09-01 10:15:00'), -- Accommodation 12: Lakefront Villa

-- Wishlist 2: Winter Retreats (User ID 1)
(4, 2, 5, '2024-09-05 12:35:00'), -- Accommodation 5: Luxury Penthouse Suite
(5, 2, 10, '2024-09-05 12:40:00'), -- Accommodation 10: Suburban Family Home

-- Wishlist 3: Family Vacations (User ID 4)
(6, 3, 2, '2024-09-10 09:20:00'), -- Accommodation 2: Spacious Country House
(7, 3, 6, '2024-09-10 09:25:00'), -- Accommodation 6: Rustic Cabin in the Woods
(8, 3, 14, '2024-09-10 09:30:00'), -- Accommodation 14: Suburban Bungalow

-- Wishlist 4: Adventure Trips (User ID 4)
(9, 4, 7, '2024-09-12 14:50:00'), -- Accommodation 7: Charming Studio Apartment
(10, 4, 16, '2024-09-12 14:55:00'), -- Accommodation 16: Secluded Treehouse

-- Wishlist 5: Romantic Escapes (User ID 6)
(11, 5, 3, '2024-09-15 11:25:00'), -- Accommodation 3: Modern Loft with City View
(12, 5, 17, '2024-09-15 11:30:00'), -- Accommodation 17: City Center Suite

-- Wishlist 6: Beach Holidays (User ID 6)
(13, 6, 4, '2024-09-18 16:05:00'), -- Accommodation 4: Beachside Bungalow
(14, 6, 20, '2024-09-18 16:10:00'), -- Accommodation 20: Country Estate

-- Wishlist 7: Business Travels (User ID 9)
(15, 7, 1, '2024-09-20 08:55:00'), -- Accommodation 1: Cozy Downtown Apartment
(16, 7, 11, '2024-09-20 09:00:00'), -- Accommodation 11: Urban Chic Condo

-- Wishlist 8: Cultural Experiences (User ID 9)
(17, 8, 19, '2024-09-22 13:15:00'), -- Accommodation 19: Modern Minimalist Flat
(18, 8, 23, '2024-09-22 13:20:00'), -- Accommodation 23: Compact City Flat

-- Wishlist 9: Eco-Friendly Stays (User ID 11)
(19, 9, 15, '2024-09-25 17:35:00'), -- Accommodation 15: Eco-Friendly Cottage
(20, 9, 25, '2024-09-25 17:40:00'), -- Accommodation 25: Luxury Lakeside Cabin

-- Wishlist 10: Luxury Resorts (User ID 11)
(21, 10, 5, '2024-09-28 12:05:00'), -- Accommodation 5: Luxury Penthouse Suite
(22, 10, 12, '2024-09-28 12:10:00'), -- Accommodation 12: Lakefront Villa

-- Wishlist 11: Mountain Adventures (User ID 14)
(23, 11, 10, '2024-09-30 07:35:00'), -- Accommodation 10: Suburban Family Home
(24, 11, 14, '2024-09-30 07:40:00'), -- Accommodation 14: Suburban Bungalow

-- Wishlist 12: City Breaks (User ID 14)
(25, 12, 3, '2024-10-02 10:20:00'), -- Accommodation 3: Modern Loft with City View
(26, 12, 17, '2024-10-02 10:25:00'), -- Accommodation 17: City Center Suite

-- Wishlist 13: Pet-Friendly Homes (User ID 16)
(27, 13, 7, '2024-10-05 14:05:00'), -- Accommodation 7: Charming Studio Apartment
(28, 13, 16, '2024-10-05 14:10:00'), -- Accommodation 16: Secluded Treehouse

-- Wishlist 14: Unique Stays (User ID 16)
(29, 14, 5, '2024-10-08 09:30:00'), -- Accommodation 5: Luxury Penthouse Suite
(30, 14, 20, '2024-10-08 09:35:00'), -- Accommodation 20: Country Estate

-- Wishlist 15: Artistic Retreats (User ID 18)
(31, 15, 18, '2024-10-10 16:45:00'), -- Accommodation 18: Artist Loft
(32, 15, 22, '2024-10-10 16:50:00'), -- Accommodation 22: Luxury Lakeside Cabin

-- Wishlist 16: Lakeside Cabins (User ID 18)
(33, 16, 12, '2024-10-12 11:40:00'), -- Accommodation 12: Lakefront Villa
(34, 16, 25, '2024-10-12 12:00:00'), -- Accommodation 25: Luxury Lakeside Cabin

-- Wishlist 17: Historical Places (User ID 20)
(35, 17, 10, '2024-10-15 13:40:00'), -- Accommodation 10: Suburban Family Home
(36, 17, 20, '2024-10-15 13:45:00'), -- Accommodation 20: Country Estate

-- Wishlist 18: Spa and Wellness (User ID 20)
(37, 18, 5, '2024-10-18 08:25:00'), -- Accommodation 5: Luxury Penthouse Suite
(38, 18, 22, '2024-10-18 08:30:00'), -- Accommodation 22: Luxury Lakeside Cabin

-- Wishlist 19: Ski Resorts (User ID 22)
(39, 19, 3, '2024-10-20 15:15:00'), -- Accommodation 3: Modern Loft with City View
(40, 19, 23, '2024-10-20 15:20:00'), -- Accommodation 23: Compact City Flat

-- Wishlist 20: Beachfront Villas (User ID 22)
(41, 20, 4, '2024-10-22 17:55:00'), -- Accommodation 4: Beachside Bungalow
(42, 20, 8, '2024-10-22 18:00:00'), -- Accommodation 8: Elegant Townhouse

-- Wishlist 21: Weekend Getaways (User ID 1)
(43, 21, 11, '2024-10-25 12:35:00'), -- Accommodation 11: Urban Chic Condo
(44, 21, 13, '2024-10-25 12:40:00'), -- Accommodation 13: Downtown Micro Apartment

-- Wishlist 22: Budget-Friendly Stays (User ID 4)
(45, 22, 15, '2024-10-28 14:50:00'), -- Accommodation 15: Eco-Friendly Cottage
(46, 22, 17, '2024-10-28 14:55:00'), -- Accommodation 17: City Center Suite

-- Wishlist 23: Remote Workspaces (User ID 6)
(47, 23, 19, '2024-10-30 09:05:00'), -- Accommodation 19: Modern Minimalist Flat
(48, 23, 21, '2024-10-30 09:10:00'), -- Accommodation 21: Modern Minimalist Flat

-- Wishlist 24: Culinary Tours (User ID 9)
(49, 24, 12, '2024-11-02 16:20:00'), -- Accommodation 12: Lakefront Villa
(50, 24, 24, '2024-11-02 16:25:00'), -- Accommodation 24: Suburban Bungalow

-- Wishlist 25: Festive Celebrations (User ID 11)
(51, 25, 5, '2024-11-05 10:55:00'), -- Accommodation 5: Luxury Penthouse Suite
(52, 25, 13, '2024-11-05 11:00:00'); -- Accommodation 13: Downtown Micro Apartment

-- ===============================================================
-- Table: Discount
-- This section populates the Discount table with sample data.
-- Each entry includes discount_id, accommodation_id, discount_type,
-- percentage, start_date, and end_date.
-- ===============================================================
INSERT INTO `Discount` (
    `discount_id`, `accommodation_id`, `discount_type`, 
    `percentage`, `start_date`, `end_date`
) VALUES
(1, 1, 'Weekly', 10.00, '2024-12-01', '2024-12-07'),
(2, 1, 'Monthly', 15.00, '2024-12-01', '2024-12-31'),
(3, 2, 'Weekly', 12.00, '2024-11-10', '2024-11-16'),
(4, 2, 'Monthly', 18.00, '2024-11-10', '2024-11-30'),
(5, 3, 'Weekly', 8.00, '2024-12-20', '2024-12-26'),
(6, 3, 'Monthly', 14.00, '2024-12-20', '2024-12-31'),
(7, 4, 'Weekly', 9.00, '2024-10-15', '2024-10-21'),
(8, 4, 'Monthly', 16.00, '2024-10-15', '2024-10-31'),
(9, 5, 'Weekly', 11.00, '2024-11-05', '2024-11-11'),
(10, 5, 'Monthly', 20.00, '2024-11-05', '2024-11-30'),
(11, 6, 'Weekly', 7.50, '2024-12-01', '2024-12-07'),
(12, 6, 'Monthly', 13.50, '2024-12-01', '2024-12-31'),
(13, 7, 'Weekly', 10.50, '2024-10-05', '2024-10-11'),
(14, 7, 'Monthly', 17.00, '2024-10-05', '2024-10-31'),
(15, 8, 'Weekly', 9.50, '2024-10-25', '2024-10-31'),
(16, 8, 'Monthly', 15.50, '2024-10-25', '2024-10-31'),
(17, 9, 'Weekly', 8.50, '2024-10-30', '2024-11-05'),
(18, 9, 'Monthly', 14.50, '2024-10-30', '2024-11-30'),
(19, 10, 'Weekly', 12.50, '2024-11-05', '2024-11-11'),
(20, 10, 'Monthly', 19.00, '2024-11-05', '2024-11-30'),
(21, 11, 'Weekly', 10.00, '2024-09-30', '2024-10-06'),
(22, 11, 'Monthly', 17.50, '2024-09-30', '2024-10-31'),
(23, 12, 'Weekly', 7.00, '2024-10-07', '2024-10-13'),
(24, 12, 'Monthly', 13.00, '2024-10-07', '2024-10-31'),
(25, 13, 'Weekly', 11.50, '2024-10-05', '2024-10-11');

-- ===============================================================
-- Table: PayoutMethod
-- This section populates the PayoutMethod table with sample data.
-- Each entry includes payout_method_id, host_id, account_type,
-- account_details, and is_default.
-- ===============================================================
INSERT INTO `PayoutMethod` (
    `payout_method_id`, `host_id`, `account_type`, 
    `account_details`, `is_default`
) VALUES
(1, 2, 'Bank Account', 'Bank: Chase, Account Number: XXXXXXXX, Routing Number: XXXXXXXX', TRUE),
(2, 2, 'PayPal', 'Email: host2.paypal@example.com', FALSE),
(3, 5, 'Bank Account', 'Bank: Wells Fargo, Account Number: XXXXXXXX, Routing Number: XXXXXXXX', TRUE),
(4, 5, 'PayPal', 'Email: host5.paypal@example.com', FALSE),
(5, 10, 'Bank Account', 'Bank: Bank of America, Account Number: XXXXXXXX, Routing Number: XXXXXXXX', TRUE),
(6, 10, 'PayPal', 'Email: host10.paypal@example.com', FALSE),
(7, 12, 'Bank Account', 'Bank: Citibank, Account Number: XXXXXXXX, Routing Number: XXXXXXXX', TRUE),
(8, 12, 'PayPal', 'Email: host12.paypal@example.com', FALSE),
(9, 14, 'Bank Account', 'Bank: Capital One, Account Number: XXXXXXXX, Routing Number: XXXXXXXX', TRUE),
(10, 14, 'PayPal', 'Email: host14.paypal@example.com', FALSE),
(11, 16, 'Bank Account', 'Bank: HSBC, Account Number: XXXXXXXX, Routing Number: XXXXXXXX', TRUE),
(12, 16, 'PayPal', 'Email: host16.paypal@example.com', FALSE),
(13, 17, 'Bank Account', 'Bank: TD Bank, Account Number: XXXXXXXX, Routing Number: XXXXXXXX', TRUE),
(14, 17, 'PayPal', 'Email: host17.paypal@example.com', FALSE),
(15, 19, 'Bank Account', 'Bank: PNC Bank, Account Number: XXXXXXXX, Routing Number: XXXXXXXX', TRUE),
(16, 19, 'PayPal', 'Email: host19.paypal@example.com', FALSE),
(17, 20, 'Bank Account', 'Bank: US Bank, Account Number: XXXXXXXX, Routing Number: XXXXXXXX', TRUE),
(18, 20, 'PayPal', 'Email: host20.paypal@example.com', FALSE),
(19, 22, 'Bank Account', 'Bank: BB&T, Account Number: XXXXXXXX, Routing Number: XXXXXXXX', TRUE),
(20, 22, 'PayPal', 'Email: host22.paypal@example.com', FALSE),
(21, 4, 'Bank Account', 'Bank: Ally Bank, Account Number: XXXXXXXX, Routing Number: XXXXXXXX', TRUE),
(22, 4, 'PayPal', 'Email: host4.paypal@example.com', FALSE),
(23, 6, 'Bank Account', 'Bank: SunTrust, Account Number: XXXXXXXX, Routing Number: XXXXXXXX', TRUE),
(24, 6, 'PayPal', 'Email: host6.paypal@example.com', FALSE),
(25, 8, 'Bank Account', 'Bank: Barclays, Account Number: XXXXXXXX, Routing Number: XXXXXXXX', TRUE);

-- ===============================================================
-- Table: Language
-- This section populates the Language table with sample data.
-- Each entry includes language_id, name, and code.
-- ===============================================================
INSERT INTO `Language` (
    `language_id`, `name`, `code`
) VALUES
(1, 'English', 'EN'),
(2, 'Spanish', 'ES'),
(3, 'French', 'FR'),
(4, 'German', 'DE'),
(5, 'Chinese', 'ZH'),
(6, 'Japanese', 'JA'),
(7, 'Russian', 'RU'),
(8, 'Portuguese', 'PT'),
(9, 'Italian', 'IT'),
(10, 'Arabic', 'AR'),
(11, 'Hindi', 'HI'),
(12, 'Bengali', 'BN'),
(13, 'Korean', 'KO'),
(14, 'Turkish', 'TR'),
(15, 'Vietnamese', 'VI'),
(16, 'Dutch', 'NL'),
(17, 'Greek', 'EL'),
(18, 'Hebrew', 'HE'),
(19, 'Swedish', 'SV'),
(20, 'Norwegian', 'NO'),
(21, 'Danish', 'DA'),
(22, 'Polish', 'PL'),
(23, 'Thai', 'TH'),
(24, 'Finnish', 'FI'),
(25, 'Czech', 'CS');

-- ===============================================================
-- Table: UserLanguage
-- This section populates the UserLanguage table with sample data.
-- Each entry includes user_language_id, user_id, language_id,
-- and proficiency_level.
-- ===============================================================
INSERT INTO `UserLanguage` (
    `user_language_id`, `user_id`, `language_id`, 
    `proficiency_level`
) VALUES
(1, 1, 1, 'Native'),
(2, 1, 2, 'Intermediate'),
(3, 4, 1, 'Advanced'),
(4, 4, 3, 'Basic'),
(5, 5, 1, 'Native'),
(6, 5, 4, 'Intermediate'),
(7, 10, 1, 'Advanced'),
(8, 10, 5, 'Basic'),
(9, 12, 1, 'Native'),
(10, 12, 6, 'Intermediate'),
(11, 14, 1, 'Advanced'),
(12, 14, 7, 'Basic'),
(13, 16, 1, 'Native'),
(14, 16, 8, 'Intermediate'),
(15, 17, 1, 'Advanced'),
(16, 17, 9, 'Basic'),
(17, 19, 1, 'Native'),
(18, 19, 10, 'Intermediate'),
(19, 20, 1, 'Advanced'),
(20, 20, 11, 'Basic'),
(21, 22, 1, 'Native'),
(22, 22, 12, 'Intermediate'),
(23, 6, 1, 'Advanced'),
(24, 6, 13, 'Basic'),
(25, 8, 1, 'Native');

-- ===============================================================
-- Table: Cancellation
-- This section populates the Cancellation table with sample data.
-- Each entry includes cancellation_id, booking_id, cancellation_date,
-- reason, and refund_amount.
-- ===============================================================
INSERT INTO `Cancellation` (
    `cancellation_id`, `booking_id`, `cancellation_date`, 
    `reason`, `refund_amount`
) VALUES
(1, 3, '2024-09-27 10:00:00', 'Personal emergency', 250.00),
(2, 4, '2024-09-29 14:30:00', 'Host cancellation', 400.00),
(3, 7, '2024-10-01 09:15:00', 'Change in travel plans', 125.00),
(4, 9, '2024-10-03 16:45:00', 'Found alternative accommodation', 195.00),
(5, 11, '2024-10-05 12:20:00', 'Health issues', 390.00),
(6, 13, '2024-10-07 08:50:00', 'Weather conditions', 380.00),
(7, 15, '2024-10-09 18:30:00', 'Work commitments', 980.00),
(8, 17, '2024-10-11 11:40:00', 'Family reasons', 1000.00),
(9, 19, '2024-10-13 14:10:00', 'Financial constraints', 720.00),
(10, 21, '2024-10-15 10:25:00', 'Travel restrictions', 3600.00),
(11, 23, '2024-10-17 09:35:00', 'Personal reasons', 220.00),
(12, 24, '2024-10-19 17:55:00', 'Host unavailability', 1750.00),
(13, 5, '2024-10-05 13:00:00', 'Host cancellation', 900.00),
(14, 6, '2024-10-07 14:20:00', 'Guest cancellation', 300.00),
(15, 8, '2024-10-09 15:35:00', 'Host cancellation', 900.00),
(16, 10, '2024-10-11 16:50:00', 'Guest cancellation', 1680.00),
(17, 12, '2024-10-13 18:05:00', 'Change in plans', 1680.00),
(18, 14, '2024-10-15 19:20:00', 'Guest cancellation', 720.00),
(19, 16, '2024-10-17 20:35:00', 'Host unavailability', 330.00),
(20, 18, '2024-10-19 21:50:00', 'Guest cancellation', 1275.00),
(21, 20, '2024-10-21 22:05:00', 'Host cancellation', 3600.00),
(22, 22, '2024-10-23 23:15:00', 'Guest cancellation', 1750.00),
(23, 1, '2024-10-25 09:00:00', 'Guest cancellation', 510.00),
(24, 2, '2024-10-27 10:30:00', 'Host cancellation', 500.00),
(25, 25, '2024-10-29 11:45:00', 'Guest cancellation', 220.00);

-- ===============================================================
-- Table: HostVerification
-- This section populates the HostVerification table with sample data.
-- Each entry includes verification_id, host_id, verification_type,
-- verification_date, and status.
-- ===============================================================
INSERT INTO `HostVerification` (
    `verification_id`, `host_id`, `verification_type`, 
    `verification_date`, `status`
) VALUES
(1, 2, 'ID Verification', '2024-09-01', 'approved'),
(2, 2, 'Address Verification', '2024-09-03', 'approved'),
(3, 2, 'Phone Verification', '2024-09-05', 'approved'),
(4, 5, 'ID Verification', '2024-09-07', 'approved'),
(5, 5, 'Address Verification', '2024-09-09', 'approved'),
(6, 5, 'Phone Verification', '2024-09-11', 'approved'),
(7, 10, 'ID Verification', '2024-09-13', 'approved'),
(8, 10, 'Address Verification', '2024-09-15', 'approved'),
(9, 10, 'Phone Verification', '2024-09-17', 'approved'),
(10, 12, 'ID Verification', '2024-09-19', 'approved'),
(11, 12, 'Address Verification', '2024-09-21', 'approved'),
(12, 12, 'Phone Verification', '2024-09-23', 'approved'),
(13, 14, 'ID Verification', '2024-09-25', 'approved'),
(14, 14, 'Address Verification', '2024-09-27', 'approved'),
(15, 14, 'Phone Verification', '2024-09-29', 'approved'),
(16, 16, 'ID Verification', '2024-10-01', 'approved'),
(17, 16, 'Address Verification', '2024-10-03', 'approved'),
(18, 16, 'Phone Verification', '2024-10-05', 'approved'),
(19, 17, 'ID Verification', '2024-10-07', 'approved'),
(20, 17, 'Address Verification', '2024-10-09', 'approved'),
(21, 17, 'Phone Verification', '2024-10-11', 'approved'),
(22, 19, 'ID Verification', '2024-10-13', 'approved'),
(23, 19, 'Address Verification', '2024-10-15', 'approved'),
(24, 19, 'Phone Verification', '2024-10-17', 'approved'),
(25, 20, 'ID Verification', '2024-10-19', 'approved');

-- ===============================================================
-- Table: SearchHistory
-- This section populates the SearchHistory table with sample data.
-- Each entry includes search_id, user_id, search_query,
-- and search_date.
-- ===============================================================
INSERT INTO `SearchHistory` (
    `search_id`, `user_id`, `search_query`, 
    `search_date`
) VALUES
(1, 1, 'Beach apartments in Miami for 2 guests', '2024-09-01 08:30:00'),
(2, 1, 'Pet-friendly houses in New York', '2024-09-02 09:45:00'),
(3, 4, 'Spacious country houses with pool', '2024-09-03 10:15:00'),
(4, 4, 'Mountain cabins available for weekends', '2024-09-04 11:00:00'),
(5, 5, 'Luxury villas in Los Angeles', '2024-09-05 12:30:00'),
(6, 5, 'Affordable studios in Chicago', '2024-09-06 13:45:00'),
(7, 10, 'Modern apartments near downtown', '2024-09-07 14:20:00'),
(8, 10, 'Eco-friendly accommodations in Seattle', '2024-09-08 15:00:00'),
(9, 12, 'Beachfront condos in Honolulu', '2024-09-09 16:10:00'),
(10, 12, 'Historic homes in Boston', '2024-09-10 17:25:00'),
(11, 14, 'Secluded treehouses in Oregon', '2024-09-11 18:40:00'),
(12, 14, 'City apartments with skyline views', '2024-09-12 19:55:00'),
(13, 16, 'Luxury penthouses in San Francisco', '2024-09-13 20:15:00'),
(14, 16, 'Affordable shared rooms in Austin', '2024-09-14 21:30:00'),
(15, 17, 'Family-friendly homes in Denver', '2024-09-15 22:45:00'),
(16, 17, 'Romantic getaways in Napa Valley', '2024-09-16 23:00:00'),
(17, 19, 'Pet-friendly apartments in Portland', '2024-09-17 07:15:00'),
(18, 19, 'Modern condos with gym access', '2024-09-18 08:25:00'),
(19, 20, 'Beachside villas with private pools', '2024-09-19 09:35:00'),
(20, 20, 'Cozy cabins in the Rockies', '2024-09-20 10:45:00'),
(21, 22, 'Luxury lakeside homes in Minneapolis', '2024-09-21 11:55:00'),
(22, 22, 'Affordable apartments in Phoenix', '2024-09-22 13:05:00'),
(23, 6, 'Downtown apartments with balcony', '2024-09-23 14:15:00'),
(24, 8, 'Beachfront studios in Tampa', '2024-09-24 15:25:00'),
(25, 11, 'Mountain lodges with hiking trails', '2024-09-25 16:35:00');