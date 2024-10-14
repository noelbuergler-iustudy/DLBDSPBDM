-- ===============================================================
-- Airbnb Clone Database: Phase 2 - Sample Queries
-- Created on: 2024-09-24
-- Updated on: 2024-10-14
-- Description: This script provides sample queries for each table
-- in the Airbnb-like platform database.
-- ===============================================================

-- Use the airbnb_clone database
USE airbnb_clone;

-- 1. User Table Query
SELECT user_id, user_type, first_name, last_name, email
FROM User
ORDER BY user_id
LIMIT 5;

-- 2. Accommodation Table Query
SELECT accommodation_id, host_id, title, property_type, price_per_night
FROM Accommodation
ORDER BY price_per_night DESC
LIMIT 5;

-- 3. Booking Table Query
SELECT booking_id, guest_id, accommodation_id, check_in_date, check_out_date, total_price
FROM Booking
ORDER BY check_in_date DESC
LIMIT 5;

-- 4. Review Table Query
SELECT review_id, reviewer_id, reviewee_id, booking_id, rating, review_text
FROM Review
ORDER BY rating DESC
LIMIT 5;

-- 5. Message Table Query
SELECT message_id, sender_id, receiver_id, booking_id, message_text, sent_date
FROM Message
ORDER BY sent_date DESC
LIMIT 5;

-- 6. Amenity Table Query
SELECT amenity_id, name, description
FROM Amenity
ORDER BY amenity_id
LIMIT 5;

-- 7. AccommodationAmenity Table Query
SELECT accommodation_amenity_id, accommodation_id, amenity_id
FROM AccommodationAmenity
ORDER BY accommodation_id
LIMIT 5;

-- 8. Photo Table Query
SELECT photo_id, accommodation_id, photo_url, caption, is_primary
FROM Photo
WHERE is_primary = TRUE
LIMIT 5;

-- 9. Availability Table Query
SELECT availability_id, accommodation_id, date, is_available, price
FROM Availability
WHERE is_available = TRUE AND date > CURDATE()
ORDER BY date
LIMIT 5;

-- 10. Payment Table Query
SELECT payment_id, user_id, booking_id, amount, currency, payment_method, status
FROM Payment
WHERE status = 'completed'
ORDER BY amount DESC
LIMIT 5;

-- 11. Wishlist Table Query
SELECT wishlist_id, user_id, name, creation_date
FROM Wishlist
ORDER BY creation_date DESC
LIMIT 5;

-- 12. WishlistItem Table Query
SELECT wishlist_item_id, wishlist_id, accommodation_id, added_date
FROM WishlistItem
ORDER BY added_date DESC
LIMIT 5;

-- 13. PayoutMethod Table Query
SELECT payout_method_id, host_id, account_type, is_default
FROM PayoutMethod
WHERE is_default = TRUE
LIMIT 5;

-- 14. Language Table Query
SELECT language_id, name, code
FROM Language
ORDER BY name
LIMIT 5;

-- 15. UserLanguage Table Query
SELECT user_language_id, user_id, language_id, proficiency_level
FROM UserLanguage
ORDER BY user_id
LIMIT 5;

-- 16. Cancellation Table Query
SELECT cancellation_id, booking_id, cancellation_date, reason, refund_amount
FROM Cancellation
ORDER BY cancellation_date DESC
LIMIT 5;

-- 17. Discount Table Query
SELECT discount_id, accommodation_id, discount_type, percentage, start_date, end_date
FROM Discount
WHERE end_date > CURDATE()
ORDER BY percentage DESC
LIMIT 5;

-- 18. HostVerification Table Query
SELECT verification_id, host_id, verification_type, verification_date, status
FROM HostVerification
WHERE status = 'approved'
ORDER BY verification_date DESC
LIMIT 5;

-- 19. SearchHistory Table Query
SELECT search_id, user_id, search_query, search_date
FROM SearchHistory
ORDER BY search_date DESC
LIMIT 5;

-- 20. HouseRules Table Query
SELECT rule_id, accommodation_id, rule_description
FROM HouseRules
ORDER BY accommodation_id
LIMIT 5;

-- 21. NeighborhoodInfo Table Query
SELECT info_id, accommodation_id, description, safety_rating, nearby_attractions, public_transport
FROM NeighborhoodInfo
ORDER BY safety_rating DESC
LIMIT 5;

-- 22. Top 5 hosts with the most listings
SELECT u.user_id, u.first_name, u.last_name, COUNT(a.accommodation_id) as listing_count
FROM User u
JOIN Accommodation a ON u.user_id = a.host_id
GROUP BY u.user_id, u.first_name, u.last_name
ORDER BY listing_count DESC
LIMIT 5;

-- 23. Average rating for each accommodation
SELECT a.accommodation_id, a.title, AVG(r.rating) as average_rating
FROM Accommodation a
LEFT JOIN Booking b ON a.accommodation_id = b.accommodation_id
LEFT JOIN Review r ON b.booking_id = r.booking_id
GROUP BY a.accommodation_id, a.title
ORDER BY average_rating DESC
LIMIT 5;

-- 24. Most wishlisted accommodations
SELECT a.accommodation_id, a.title, COUNT(wi.wishlist_item_id) as wishlist_count
FROM Accommodation a
JOIN WishlistItem wi ON a.accommodation_id = wi.accommodation_id
GROUP BY a.accommodation_id, a.title
ORDER BY wishlist_count DESC
LIMIT 5;

-- 25. Total earnings for each host in the last 30 days
SELECT u.user_id, u.first_name, u.last_name, SUM(b.total_price) as total_earnings
FROM User u
JOIN Accommodation a ON u.user_id = a.host_id
JOIN Booking b ON a.accommodation_id = b.accommodation_id
WHERE b.status = 'completed'
  AND b.check_out_date >= DATE_SUB(CURDATE(), INTERVAL 30 DAY)
GROUP BY u.user_id, u.first_name, u.last_name
ORDER BY total_earnings DESC
LIMIT 5;