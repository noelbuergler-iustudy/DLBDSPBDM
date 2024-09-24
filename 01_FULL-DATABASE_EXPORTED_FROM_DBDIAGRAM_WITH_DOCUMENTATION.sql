-- ===============================================================
-- Airbnb Clone Database: Phase 2 - Database Schema
-- Created on: 2024-09-24
-- Description: This script creates the database schema for an
-- Airbnb-like platform, including tables for users, accommodations,
-- bookings, reviews, messaging, amenities, and more. Each table
-- is documented with its purpose and key attributes.
-- ===============================================================

-- Create the main database for the Airbnb clone
CREATE DATABASE airbnb_clone;

-- Use the airbnb_clone database
USE airbnb_clone;

-- ===============================================================
-- Table: User
-- Description: Stores information about all users, including guests,
-- hosts, and administrators.
-- ===============================================================
CREATE TABLE `User` (
  `user_id` INTEGER PRIMARY KEY, -- Unique identifier for each user
  `user_type` ENUM('Guest','Host','Administrator'), -- Type of user
  `first_name` VARCHAR(50), -- User's first name
  `last_name` VARCHAR(50), -- User's last name
  `email` VARCHAR(100) UNIQUE, -- User's unique email address
  `phone` VARCHAR(20), -- User's phone number
  `profile_pic_url` VARCHAR(255), -- URL to user's profile picture
  `dob` DATE, -- User's date of birth
  `address` TEXT, -- User's address
  `bio` TEXT, -- User's biography or description
  `account_creation_date` DATETIME, -- Date and time when the account was created
  `last_login_date` DATETIME -- Date and time of the user's last login
);

-- ===============================================================
-- Table: Accommodation
-- Description: Contains details about each accommodation listed by hosts.
-- ===============================================================
CREATE TABLE `Accommodation` (
  `accommodation_id` INTEGER PRIMARY KEY, -- Unique identifier for each accommodation
  `host_id` INTEGER, -- ID of the user hosting this accommodation (Foreign Key)
  `title` VARCHAR(100), -- Title of the accommodation listing
  `description` TEXT, -- Detailed description of the accommodation
  `address` TEXT, -- Address of the accommodation
  `city` VARCHAR(50), -- City where the accommodation is located
  `state` VARCHAR(50), -- State or region where the accommodation is located
  `country` VARCHAR(50), -- Country where the accommodation is located
  `zip` VARCHAR(20), -- Postal or ZIP code of the accommodation
  `latitude` DECIMAL(10,8), -- Latitude coordinate of the accommodation
  `longitude` DECIMAL(11,8), -- Longitude coordinate of the accommodation
  `property_type` VARCHAR(50), -- Type of property (e.g., apartment, house)
  `room_type` VARCHAR(50), -- Type of room (e.g., entire place, private room)
  `max_guests` INTEGER, -- Maximum number of guests allowed
  `bedrooms` INTEGER, -- Number of bedrooms
  `beds` INTEGER, -- Number of beds
  `bathrooms` DECIMAL(3,1), -- Number of bathrooms (allows for half baths)
  `price_per_night` DECIMAL(10,2), -- Base price per night
  `cleaning_fee` DECIMAL(10,2), -- Additional cleaning fee
  `check_in_time` TIME, -- Standard check-in time
  `check_out_time` TIME -- Standard check-out time
);

-- ===============================================================
-- Table: HouseRules
-- Description: Stores house rules for each accommodation.
-- ===============================================================
CREATE TABLE `HouseRules` (
  `rule_id` INTEGER PRIMARY KEY, -- Unique identifier for each house rule
  `accommodation_id` INTEGER, -- ID of the associated accommodation (Foreign Key)
  `rule_description` TEXT -- Description of the house rule
);

-- ===============================================================
-- Table: NeighborhoodInfo
-- Description: Contains information about the neighborhood of each accommodation.
-- ===============================================================
CREATE TABLE `NeighborhoodInfo` (
  `info_id` INTEGER PRIMARY KEY, -- Unique identifier for each neighborhood info entry
  `accommodation_id` INTEGER, -- ID of the associated accommodation (Foreign Key)
  `description` TEXT, -- General description of the neighborhood
  `safety_rating` INTEGER, -- Safety rating of the neighborhood
  `nearby_attractions` TEXT, -- Description of nearby attractions
  `public_transport` TEXT -- Information about public transportation options
);

-- ===============================================================
-- Table: Booking
-- Description: Manages booking details made by guests for accommodations.
-- ===============================================================
CREATE TABLE `Booking` (
  `booking_id` INTEGER PRIMARY KEY, -- Unique identifier for each booking
  `guest_id` INTEGER, -- ID of the user making the booking (Foreign Key)
  `accommodation_id` INTEGER, -- ID of the booked accommodation (Foreign Key)
  `check_in_date` DATE, -- Date of check-in
  `check_out_date` DATE, -- Date of check-out
  `number_of_guests` INTEGER, -- Number of guests for this booking
  `total_price` DECIMAL(10,2), -- Total price for the booking
  `booking_date` DATETIME, -- Date and time when the booking was made
  `status` VARCHAR(20) -- Current status of the booking (e.g., confirmed, cancelled)
);

-- ===============================================================
-- Table: Review
-- Description: Stores reviews and ratings given by users for bookings.
-- ===============================================================
CREATE TABLE `Review` (
  `review_id` INTEGER PRIMARY KEY, -- Unique identifier for each review
  `reviewer_id` INTEGER, -- ID of the user writing the review (Foreign Key)
  `reviewee_id` INTEGER, -- ID of the user or accommodation being reviewed (Foreign Key)
  `booking_id` INTEGER, -- ID of the associated booking (Foreign Key)
  `rating` INTEGER, -- Numerical rating given in the review
  `review_text` TEXT, -- Text content of the review
  `review_date` DATE -- Date when the review was submitted
);

-- ===============================================================
-- Table: Message
-- Description: Facilitates messaging between users related to bookings.
-- ===============================================================
CREATE TABLE `Message` (
  `message_id` INTEGER PRIMARY KEY, -- Unique identifier for each message
  `sender_id` INTEGER, -- ID of the user sending the message (Foreign Key)
  `receiver_id` INTEGER, -- ID of the user receiving the message (Foreign Key)
  `booking_id` INTEGER, -- ID of the associated booking, if any (Foreign Key)
  `message_text` TEXT, -- Content of the message
  `sent_date` DATETIME, -- Date and time when the message was sent
  `is_read` BOOLEAN -- Indicates whether the message has been read
);

-- ===============================================================
-- Table: Amenity
-- Description: Lists all possible amenities that accommodations can offer.
-- ===============================================================
CREATE TABLE `Amenity` (
  `amenity_id` INTEGER PRIMARY KEY, -- Unique identifier for each amenity
  `name` VARCHAR(50), -- Name of the amenity
  `description` TEXT -- Description of the amenity
);

-- ===============================================================
-- Table: AccommodationAmenity
-- Description: Many-to-many relationship between accommodations and amenities.
-- ===============================================================
CREATE TABLE `AccommodationAmenity` (
  `accommodation_amenity_id` INTEGER PRIMARY KEY, -- Unique identifier for each accommodation-amenity relationship
  `accommodation_id` INTEGER, -- ID of the accommodation (Foreign Key)
  `amenity_id` INTEGER -- ID of the amenity (Foreign Key)
);

-- ===============================================================
-- Table: Photo
-- Description: Stores photos associated with each accommodation.
-- ===============================================================
CREATE TABLE `Photo` (
  `photo_id` INTEGER PRIMARY KEY, -- Unique identifier for each photo
  `accommodation_id` INTEGER, -- ID of the associated accommodation (Foreign Key)
  `photo_url` VARCHAR(255), -- URL of the photo
  `caption` TEXT, -- Caption or description of the photo
  `is_primary` BOOLEAN -- Indicates if this is the primary photo for the accommodation
);

-- ===============================================================
-- Table: Availability
-- Description: Manages the availability and pricing of accommodations by date.
-- ===============================================================
CREATE TABLE `Availability` (
  `availability_id` INTEGER PRIMARY KEY, -- Unique identifier for each availability record
  `accommodation_id` INTEGER, -- ID of the associated accommodation (Foreign Key)
  `date` DATE, -- Date of availability
  `is_available` BOOLEAN, -- Indicates if the accommodation is available on this date
  `price` DECIMAL(10,2) -- Price for this specific date, if different from base price
);

-- ===============================================================
-- Table: Payment
-- Description: Handles payment transactions related to bookings.
-- ===============================================================
CREATE TABLE `Payment` (
  `payment_id` INTEGER PRIMARY KEY, -- Unique identifier for each payment
  `user_id` INTEGER, -- ID of the user making the payment (Foreign Key)
  `booking_id` INTEGER, -- ID of the associated booking (Foreign Key)
  `amount` DECIMAL(10,2), -- Amount paid
  `currency` VARCHAR(3), -- Currency code (e.g., USD, EUR)
  `payment_method` VARCHAR(50), -- Method of payment (e.g., credit card, PayPal)
  `payment_date` DATETIME, -- Date and time when the payment was made
  `status` VARCHAR(20) -- Status of the payment (e.g., completed, pending, failed)
);

-- ===============================================================
-- Table: Wishlist
-- Description: Allows users to create and manage wishlists of accommodations.
-- ===============================================================
CREATE TABLE `Wishlist` (
  `wishlist_id` INTEGER PRIMARY KEY, -- Unique identifier for each wishlist
  `user_id` INTEGER, -- ID of the user who owns the wishlist (Foreign Key)
  `name` VARCHAR(100), -- Name of the wishlist
  `creation_date` DATETIME -- Date and time when the wishlist was created
);

-- ===============================================================
-- Table: WishlistItem
-- Description: Items within a user's wishlist, linking to accommodations.
-- ===============================================================
CREATE TABLE `WishlistItem` (
  `wishlist_item_id` INTEGER PRIMARY KEY, -- Unique identifier for each wishlist item
  `wishlist_id` INTEGER, -- ID of the associated wishlist (Foreign Key)
  `accommodation_id` INTEGER, -- ID of the accommodation in the wishlist (Foreign Key)
  `added_date` DATETIME -- Date and time when the item was added to the wishlist
);

-- ===============================================================
-- Table: PayoutMethod
-- Description: Stores payout methods for hosts to receive payments.
-- ===============================================================
CREATE TABLE `PayoutMethod` (
  `payout_method_id` INTEGER PRIMARY KEY, -- Unique identifier for each payout method
  `host_id` INTEGER, -- ID of the host user (Foreign Key)
  `account_type` VARCHAR(50), -- Type of payout account (e.g., bank account, PayPal)
  `account_details` TEXT, -- Encrypted account details
  `is_default` BOOLEAN -- Indicates if this is the default payout method for the host
);

-- ===============================================================
-- Table: Language
-- Description: Lists languages supported by the platform.
-- ===============================================================
CREATE TABLE `Language` (
  `language_id` INTEGER PRIMARY KEY, -- Unique identifier for each language
  `name` VARCHAR(50), -- Name of the language
  `code` VARCHAR(5) -- ISO language code
);

-- ===============================================================
-- Table: UserLanguage
-- Description: Associates users with languages they speak and their proficiency.
-- ===============================================================
CREATE TABLE `UserLanguage` (
  `user_language_id` INTEGER PRIMARY KEY, -- Unique identifier for each user-language relationship
  `user_id` INTEGER, -- ID of the user (Foreign Key)
  `language_id` INTEGER, -- ID of the language (Foreign Key)
  `proficiency_level` VARCHAR(20) -- User's proficiency level in this language
);

-- ===============================================================
-- Table: Cancellation
-- Description: Records cancellations of bookings and associated details.
-- ===============================================================
CREATE TABLE `Cancellation` (
  `cancellation_id` INTEGER PRIMARY KEY, -- Unique identifier for each cancellation
  `booking_id` INTEGER, -- ID of the cancelled booking (Foreign Key)
  `cancellation_date` DATETIME, -- Date and time of the cancellation
  `reason` TEXT, -- Reason for the cancellation
  `refund_amount` DECIMAL(10,2) -- Amount refunded to the guest
);

-- ===============================================================
-- Table: Discount
-- Description: Manages discounts applicable to accommodations.
-- ===============================================================
CREATE TABLE `Discount` (
  `discount_id` INTEGER PRIMARY KEY, -- Unique identifier for each discount
  `accommodation_id` INTEGER, -- ID of the associated accommodation (Foreign Key)
  `discount_type` VARCHAR(50), -- Type of discount (e.g., weekly, monthly)
  `percentage` DECIMAL(5,2), -- Discount percentage
  `start_date` DATE, -- Start date of the discount period
  `end_date` DATE -- End date of the discount period
);

-- ===============================================================
-- Table: HostVerification
-- Description: Tracks the verification status of hosts.
-- ===============================================================
CREATE TABLE `HostVerification` (
  `verification_id` INTEGER PRIMARY KEY, -- Unique identifier for each verification record
  `host_id` INTEGER, -- ID of the host user (Foreign Key)
  `verification_type` VARCHAR(50), -- Type of verification (e.g., ID, address, phone)
  `verification_date` DATE, -- Date when the verification was completed
  `status` VARCHAR(20) -- Status of the verification (e.g., pending, approved, rejected)
);

-- ===============================================================
-- Table: SearchHistory
-- Description: Logs search queries performed by users.
-- ===============================================================
CREATE TABLE `SearchHistory` (
  `search_id` INTEGER PRIMARY KEY, -- Unique identifier for each search record
  `user_id` INTEGER, -- ID of the user who performed the search (Foreign Key)
  `search_query` TEXT, -- The search query or parameters used
  `search_date` DATETIME -- Date and time when the search was performed
);

-- ===============================================================
-- Foreign Key Constraints
-- Description: Establish relationships between tables to ensure data integrity.
-- ===============================================================

-- Link Accommodation to User (Host)
ALTER TABLE `Accommodation` 
  ADD FOREIGN KEY (`host_id`) REFERENCES `User` (`user_id`);

-- Link Booking to User (Guest)
ALTER TABLE `Booking` 
  ADD FOREIGN KEY (`guest_id`) REFERENCES `User` (`user_id`);

-- Link HostVerification to User (Host)
ALTER TABLE `HostVerification` 
  ADD FOREIGN KEY (`host_id`) REFERENCES `User` (`user_id`);

-- Link SearchHistory to User
ALTER TABLE `SearchHistory` 
  ADD FOREIGN KEY (`user_id`) REFERENCES `User` (`user_id`);

-- Link Payment to User
ALTER TABLE `Payment` 
  ADD FOREIGN KEY (`user_id`) REFERENCES `User` (`user_id`);

-- Link Review to User (Reviewer)
ALTER TABLE `Review` 
  ADD FOREIGN KEY (`reviewer_id`) REFERENCES `User` (`user_id`);

-- Link Review to User or Accommodation (Reviewee)
ALTER TABLE `Review` 
  ADD FOREIGN KEY (`reviewee_id`) REFERENCES `User` (`user_id`);

-- Link Message to User (Sender)
ALTER TABLE `Message` 
  ADD FOREIGN KEY (`sender_id`) REFERENCES `User` (`user_id`);

-- Link Message to User (Receiver)
ALTER TABLE `Message` 
  ADD FOREIGN KEY (`receiver_id`) REFERENCES `User` (`user_id`);

-- Link Wishlist to User
ALTER TABLE `Wishlist` 
  ADD FOREIGN KEY (`user_id`) REFERENCES `User` (`user_id`);

-- Link PayoutMethod to User (Host)
ALTER TABLE `PayoutMethod` 
  ADD FOREIGN KEY (`host_id`) REFERENCES `User` (`user_id`);

-- Link UserLanguage to User
ALTER TABLE `UserLanguage` 
  ADD FOREIGN KEY (`user_id`) REFERENCES `User` (`user_id`);

-- Link Review to Booking
ALTER TABLE `Review` 
  ADD FOREIGN KEY (`booking_id`) REFERENCES `Booking` (`booking_id`);

-- Link Message to Booking
ALTER TABLE `Message` 
  ADD FOREIGN KEY (`booking_id`) REFERENCES `Booking` (`booking_id`);

-- Link Payment to Booking
ALTER TABLE `Payment` 
  ADD FOREIGN KEY (`booking_id`) REFERENCES `Booking` (`booking_id`);

-- Link Cancellation to Booking
ALTER TABLE `Cancellation` 
  ADD FOREIGN KEY (`booking_id`) REFERENCES `Booking` (`booking_id`);

-- Link Booking to Accommodation
ALTER TABLE `Booking` 
  ADD FOREIGN KEY (`accommodation_id`) REFERENCES `Accommodation` (`accommodation_id`);

-- Link AccommodationAmenity to Accommodation
ALTER TABLE `AccommodationAmenity` 
  ADD FOREIGN KEY (`accommodation_id`) REFERENCES `Accommodation` (`accommodation_id`);

-- Link Photo to Accommodation
ALTER TABLE `Photo` 
  ADD FOREIGN KEY (`accommodation_id`) REFERENCES `Accommodation` (`accommodation_id`);

-- Link Availability to Accommodation
ALTER TABLE `Availability` 
  ADD FOREIGN KEY (`accommodation_id`) REFERENCES `Accommodation` (`accommodation_id`);

-- Link HouseRules to Accommodation
ALTER TABLE `HouseRules` 
  ADD FOREIGN KEY (`accommodation_id`) REFERENCES `Accommodation` (`accommodation_id`);

-- Link NeighborhoodInfo to Accommodation
ALTER TABLE `NeighborhoodInfo` 
  ADD FOREIGN KEY (`accommodation_id`) REFERENCES `Accommodation` (`accommodation_id`);

-- Link WishlistItem to Accommodation
ALTER TABLE `WishlistItem` 
  ADD FOREIGN KEY (`accommodation_id`) REFERENCES `Accommodation` (`accommodation_id`);

-- Link Discount to Accommodation
ALTER TABLE `Discount` 
  ADD FOREIGN KEY (`accommodation_id`) REFERENCES `Accommodation` (`accommodation_id`);

-- Link AccommodationAmenity to Amenity
ALTER TABLE `AccommodationAmenity` 
  ADD FOREIGN KEY (`amenity_id`) REFERENCES `Amenity` (`amenity_id`);

-- Link WishlistItem to Wishlist
ALTER TABLE `WishlistItem` 
  ADD FOREIGN KEY (`wishlist_id`) REFERENCES `Wishlist` (`wishlist_id`);

-- Link UserLanguage to Language
ALTER TABLE `UserLanguage` 
  ADD FOREIGN KEY (`language_id`) REFERENCES `Language` (`language_id`);