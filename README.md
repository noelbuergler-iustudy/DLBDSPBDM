# Airbnb Clone Database
Airbnb Clone Database designed for the International University of Applied Sciences (IU) course **"Project Build a Data Mart in SQL"**. This project models the backend database structure of an Airbnb-like platform, focusing on user roles, accommodation management, booking processes, and more.

## Table of Contents
- [Introduction](#introduction)
- [Roles](#roles)
- [Actions Performed by Roles](#actions-performed-by-roles)
- [Required Data and Functions](#required-data-and-functions)
- [Entity-Relationship Diagram](#entity-relationship-diagram)
- [Database Data Dictionary](#database-data-dictionary)

## Introduction
This project entails designing a normalized, scalable database for an Airbnb-like platform. The primary objective is to manage diverse user roles, handle complex booking processes, and maintain varied property information efficiently. The design emphasizes data integrity, minimizing redundancy, and supporting all essential platform functionalities.

## Roles
1. **Guest**: A user who searches for and books accommodations.
2. **Host**: A user who lists and manages accommodations for rent.
3. **Administrator**: A system user who manages the platform and resolves issues.

## Actions Performed by Roles

### **Guest**
- **Account Management**
  - Create and manage user profile
  - Register an account
  - Update personal information
  - Manage profile settings and preferences
- **Accommodation Search and Booking**
  - Search for accommodations using various filters (location, dates, price, amenities)
  - View accommodation details and photos
  - Read reviews and ratings
  - Book accommodations by selecting dates and number of guests
  - Request to book or instant book
- **Communication and Management**
  - Communicate with hosts pre-booking
  - Manage bookings (view details, modify or cancel bookings, check-in and check-out)
  - Pay for bookings (add/manage payment methods, make secure payments, view payment history)
  - Rate and review hosts and accommodations (leave star ratings, write detailed reviews, upload photos of stay)
  - Communicate with hosts (send and receive messages, ask questions about listings, coordinate arrival and stay details)
  - Manage wishlist (create and edit wishlists, save favorite accommodations)

### **Host**
- **Account Management**
  - Create and manage user profile
  - Register as a host
  - Verify identity and address
  - Set host preferences
- **Accommodation Management**
  - List and manage accommodations (create new listings, upload photos, write descriptions, set house rules and policies)
  - Set pricing and availability (base prices, special pricing, manage calendar, set minimum and maximum stay requirements)
- **Communication and Booking Management**
  - Communicate with guests (respond to booking inquiries, send pre-arrival information, provide support during guest stays)
  - Accept or decline booking requests (review guest profiles and requests, approve or deny booking requests, manage instant book settings)
- **Feedback and Financial Management**
  - Rate and review guests (leave star ratings, write reviews about guest stays)
  - Manage payout methods (add and verify payout accounts, set payout preferences, track earnings and payouts)

### **Administrator**
- **User and Account Management**
  - Manage user accounts (review and approve new accounts, handle account disputes or issues, suspend or terminate accounts if necessary)
- **Content Moderation**
  - Moderate listings and reviews (review and approve new listings, handle reports of inappropriate content, remove listings or reviews that violate policies)
- **Platform Management**
  - Manage platform settings (update system-wide policies, manage fees and commissions, oversee platform performance and security)

## Required Data and Functions

- **User Management**
  - Store user profiles (personal info, preferences, verification status)
  - Track user activity and history
  - Manage user roles and permissions
- **Accommodation Management**
  - Store detailed listing information (description, amenities, photos)
  - Manage pricing and availability calendars
  - Track listing performance and statistics
- **Booking System**
  - Process booking requests and confirmations
  - Manage booking modifications and cancellations
  - Store booking history and details
- **Payment Processing**
  - Securely store payment methods
  - Process payments and refunds
  - Manage payouts to hosts
- **Review and Rating System**
  - Store and display user reviews and ratings
  - Calculate and update overall ratings
  - Moderate and manage review content
- **Messaging System**
  - Enable real-time messaging between users
  - Store message history
  - Provide notification system for new messages
- **Search and Discovery**
  - Implement robust search functionality with various filters
  - Store and analyze search history
- **Wishlist Management**
  - Allow users to create and manage multiple wishlists
- **Host Tools**
  - Provide analytics and insights for hosts
  - Manage host verification process
  - Handle host payouts and financial reporting
- **Administrative Functions**
  - Provide tools for account management and moderation

## Entity-Relationship Diagram
![Entity-Relationship Diagram](/docs/images/TABLE.png)
You can also view the interactive diagram [here](https://dbdiagram.io/d/TABLE-66ded3e3550cd927ea9cf906).

## Database Data Dictionary

### 1. User

| Attribute               | Data Type       | Description                                 |
|-------------------------|-----------------|---------------------------------------------|
| `user_id` (PK)          | INTEGER         | Unique identifier for each user             |
| `user_type`             | ENUM            | Type of user: 'Guest', 'Host', or 'Administrator' |
| `first_name`            | VARCHAR(50)     | User's first name                           |
| `last_name`             | VARCHAR(50)     | User's last name                            |
| `email`                 | VARCHAR(100)    | User's email address (Unique)               |
| `phone`                 | VARCHAR(20)     | User's phone number                         |
| `profile_pic_url`       | VARCHAR(255)    | URL to user's profile picture               |
| `dob`                   | DATE            | User's date of birth                        |
| `address`               | TEXT            | User's address                              |
| `bio`                   | TEXT            | User's biography or description             |
| `account_creation_date` | DATETIME        | Date and time when the account was created  |
| `last_login_date`       | DATETIME        | Date and time of the user's last login      |

### 2. Accommodation

| Attribute               | Data Type        | Description                                        |
|-------------------------|------------------|----------------------------------------------------|
| `accommodation_id` (PK)| INTEGER          | Unique identifier for each accommodation           |
| `host_id` (FK)          | INTEGER          | ID of the user hosting this accommodation          |
| `title`                 | VARCHAR(100)     | Title of the accommodation listing                 |
| `description`           | TEXT             | Detailed description of the accommodation          |
| `address`               | TEXT             | Address of the accommodation                       |
| `city`                  | VARCHAR(50)      | City where the accommodation is located            |
| `state`                 | VARCHAR(50)      | State or region where the accommodation is located |
| `country`               | VARCHAR(50)      | Country where the accommodation is located         |
| `zip`                   | VARCHAR(20)      | Postal or ZIP code of the accommodation            |
| `latitude`              | DECIMAL(10,8)    | Latitude coordinate of the accommodation           |
| `longitude`             | DECIMAL(11,8)    | Longitude coordinate of the accommodation          |
| `property_type`         | VARCHAR(50)      | Type of property (e.g., apartment, house, villa)   |
| `room_type`             | VARCHAR(50)      | Type of room (e.g., entire place, private room, shared room) |
| `max_guests`            | INTEGER          | Maximum number of guests allowed                   |
| `bedrooms`              | INTEGER          | Number of bedrooms                                 |
| `beds`                  | INTEGER          | Number of beds                                     |
| `bathrooms`             | DECIMAL(3,1)     | Number of bathrooms (allows for half baths)        |
| `price_per_night`       | DECIMAL(10,2)    | Base price per night                               |
| `cleaning_fee`          | DECIMAL(10,2)    | Additional cleaning fee                            |
| `check_in_time`         | TIME             | Standard check-in time                             |
| `check_out_time`        | TIME             | Standard check-out time                            |

### 3. Booking

| Attribute               | Data Type     | Description                                |
|-------------------------|---------------|--------------------------------------------|
| `booking_id` (PK)       | INTEGER       | Unique identifier for each booking         |
| `guest_id` (FK)         | INTEGER       | ID of the user making the booking          |
| `accommodation_id` (FK) | INTEGER       | ID of the booked accommodation             |
| `check_in_date`         | DATE          | Date of check-in                           |
| `check_out_date`        | DATE          | Date of check-out                          |
| `number_of_guests`      | INTEGER       | Number of guests for this booking          |
| `total_price`           | DECIMAL(10,2) | Total price for the booking                |
| `booking_date`          | DATETIME      | Date and time when the booking was made    |
| `status`                | VARCHAR(20)   | Current status of the booking (e.g., confirmed, cancelled) |

### 4. Review

| Attribute               | Data Type     | Description                                |
|-------------------------|---------------|--------------------------------------------|
| `review_id` (PK)        | INTEGER       | Unique identifier for each review          |
| `reviewer_id` (FK)      | INTEGER       | ID of the user writing the review          |
| `reviewee_id` (FK)      | INTEGER       | ID of the user or accommodation being reviewed |
| `booking_id` (FK)       | INTEGER       | ID of the associated booking               |
| `review_type`           | ENUM          | Type of review: 'Guest-to-Host', or 'Host-to-Guest' |
| `rating`                | INTEGER       | Numerical rating given in the review       |
| `review_text`           | TEXT          | Text content of the review                 |
| `review_date`           | DATE          | Date when the review was submitted         |

### 5. Message

| Attribute               | Data Type     | Description                                |
|-------------------------|---------------|--------------------------------------------|
| `message_id` (PK)       | INTEGER       | Unique identifier for each message         |
| `sender_id` (FK)        | INTEGER       | ID of the user sending the message         |
| `receiver_id` (FK)      | INTEGER       | ID of the user receiving the message       |
| `booking_id` (FK)       | INTEGER       | ID of the associated booking, if any       |
| `message_text`          | TEXT          | Content of the message                     |
| `sent_date`             | DATETIME      | Date and time when the message was sent    |
| `is_read`               | BOOLEAN       | Indicates whether the message has been read |

### 6. Amenity

| Attribute               | Data Type     | Description                     |
|-------------------------|---------------|---------------------------------|
| `amenity_id` (PK)       | INTEGER       | Unique identifier for each amenity |
| `name`                  | VARCHAR(50)   | Name of the amenity             |
| `description`           | TEXT          | Description of the amenity      |

### 7. AccommodationAmenity

| Attribute                       | Data Type     | Description                                               |
|---------------------------------|---------------|-----------------------------------------------------------|
| `accommodation_amenity_id` (PK)| INTEGER       | Unique identifier for each accommodation-amenity relationship |
| `accommodation_id` (FK)         | INTEGER       | ID of the accommodation                                   |
| `amenity_id` (FK)                | INTEGER       | ID of the amenity                                        |

### 8. Photo

| Attribute               | Data Type     | Description                              |
|-------------------------|---------------|------------------------------------------|
| `photo_id` (PK)         | INTEGER       | Unique identifier for each photo         |
| `accommodation_id` (FK) | INTEGER      | ID of the associated accommodation       |
| `photo_url`             | VARCHAR(255) | URL of the photo                          |
| `caption`               | TEXT          | Caption or description of the photo        |
| `is_primary`            | BOOLEAN       | Indicates if this is the primary photo for the accommodation |

### 9. Availability

| Attribute               | Data Type     | Description                                  |
|-------------------------|---------------|----------------------------------------------|
| `availability_id` (PK)  | INTEGER       | Unique identifier for each availability record |
| `accommodation_id` (FK) | INTEGER       | ID of the associated accommodation           |
| `date`                  | DATE          | Date of availability                         |
| `is_available`          | BOOLEAN       | Indicates if the accommodation is available on this date |
| `price`                 | DECIMAL(10,2) | Price for this specific date, if different from base price |

### 10. Payment

| Attribute               | Data Type     | Description                                 |
|-------------------------|---------------|---------------------------------------------|
| `payment_id` (PK)       | INTEGER       | Unique identifier for each payment          |
| `user_id` (FK)          | INTEGER       | ID of the user                              |
| `booking_id` (FK)       | INTEGER       | ID of the associated booking                |
| `amount`                | DECIMAL(10,2) | Amount paid                                 |
| `currency`              | VARCHAR(3)    | Currency code (e.g., USD, EUR)              |
| `payment_method`        | VARCHAR(50)   | Method of payment (e.g., credit card, PayPal)|
| `payment_date`          | DATETIME      | Date and time when the payment was made     |
| `status`                | VARCHAR(20)   | Status of the payment (e.g., completed, pending, failed) |

### 11. Wishlist

| Attribute               | Data Type     | Description                                 |
|-------------------------|---------------|---------------------------------------------|
| `wishlist_id` (PK)      | INTEGER       | Unique identifier for each wishlist         |
| `user_id` (FK)          | INTEGER       | ID of the user who owns the wishlist        |
| `name`                  | VARCHAR(100)  | Name of the wishlist                        |
| `creation_date`         | DATETIME      | Date and time when the wishlist was created |

### 12. WishlistItem

| Attribute               | Data Type     | Description                                     |
|-------------------------|---------------|-------------------------------------------------|
| `wishlist_item_id` (PK) | INTEGER       | Unique identifier for each wishlist item         |
| `wishlist_id` (FK)      | INTEGER       | ID of the associated wishlist                    |
| `accommodation_id` (FK) | INTEGER      | ID of the accommodation in the wishlist          |
| `added_date`            | DATETIME      | Date and time when the item was added to the wishlist |

### 13. PayoutMethod

| Attribute               | Data Type     | Description                                        |
|-------------------------|---------------|----------------------------------------------------|
| `payout_method_id` (PK) | INTEGER      | Unique identifier for each payout method           |
| `host_id` (FK)           | INTEGER      | ID of the host user                                |
| `account_type`           | VARCHAR(50)   | Type of payout account (e.g., bank account, PayPal) |
| `account_details`        | TEXT          | Encrypted account details                          |
| `is_default`             | BOOLEAN       | Indicates if this is the default payout method for the host |

### 14. Language

| Attribute               | Data Type     | Description                 |
|-------------------------|---------------|-----------------------------|
| `language_id` (PK)      | INTEGER       | Unique identifier for each language |
| `name`                  | VARCHAR(50)   | Name of the language        |
| `code`                  | VARCHAR(5)    | ISO language code           |

### 15. UserLanguage

| Attribute                   | Data Type     | Description                                     |
|-----------------------------|---------------|-------------------------------------------------|
| `user_language_id` (PK)      | INTEGER       | Unique identifier for each user-language relationship |
| `user_id` (FK)                | INTEGER       | ID of the user                                 |
| `language_id` (FK)            | INTEGER       | ID of the language                             |
| `proficiency_level`          | VARCHAR(20)  | User's proficiency level in this language      |

### 16. Cancellation

| Attribute               | Data Type     | Description                                 |
|-------------------------|---------------|---------------------------------------------|
| `cancellation_id` (PK)   | INTEGER       | Unique identifier for each cancellation     |
| `booking_id` (FK)        | INTEGER       | ID of the cancelled booking                |
| `cancellation_date`      | DATETIME      | Date and time of the cancellation          |
| `reason`                 | TEXT          | Reason for the cancellation                |
| `refund_amount`          | DECIMAL(10,2) | Amount refunded to the guest                |

### 17. Discount

| Attribute               | Data Type     | Description                                         |
|-------------------------|---------------|-----------------------------------------------------|
| `discount_id` (PK)       | INTEGER      | Unique identifier for each discount                 |
| `accommodation_id` (FK)  | INTEGER      | ID of the associated accommodation                  |
| `discount_type`           | VARCHAR(50)  | Type of discount (e.g., weekly, monthly, special offer) |
| `percentage`              | DECIMAL(5,2) | Discount percentage                                 |
| `start_date`              | DATE         | Start date of the discount period                   |
| `end_date`                | DATE         | End date of the discount period                     |

### 18. HostVerification

| Attribute               | Data Type     | Description                                         |
|-------------------------|---------------|-----------------------------------------------------|
| `verification_id` (PK)   | INTEGER       | Unique identifier for each verification record      |
| `host_id` (FK)            | INTEGER       | ID of the host user                                 |
| `verification_type`       | VARCHAR(50)   | Type of verification (e.g., ID, address, phone)     |
| `verification_date`       | DATE          | Date when the verification was completed            |
| `status`                  | VARCHAR(20)   | Status of the verification (e.g., pending, approved, rejected) |

### 19. SearchHistory

| Attribute               | Data Type     | Description                                       |
|-------------------------|---------------|---------------------------------------------------|
| `search_id` (PK)         | INTEGER       | Unique identifier for each search record          |
| `user_id` (FK)           | INTEGER       | ID of the user who performed the search           |
| `search_query`           | TEXT          | The search query or parameters used               |
| `search_date`            | DATETIME      | Date and time when the search was performed       |

### 20. HouseRules

| Attribute               | Data Type     | Description                                 |
|-------------------------|---------------|---------------------------------------------|
| `rule_id` (PK)            | INTEGER       | Unique identifier for each house rule       |
| `accommodation_id` (FK)   | INTEGER       | ID of the associated accommodation          |
| `rule_description`        | TEXT          | Description of the house rule                |

### 21. NeighborhoodInfo

| Attribute               | Data Type     | Description                                        |
|-------------------------|---------------|----------------------------------------------------|
| `info_id` (PK)            | INTEGER       | Unique identifier for each neighborhood info entry |
| `accommodation_id` (FK)   | INTEGER      | ID of the associated accommodation                 |
| `description`             | TEXT          | General description of the neighborhood            |
| `safety_rating`           | INTEGER       | Safety rating of the neighborhood                  |
| `nearby_attractions`      | TEXT          | Description of nearby attractions                  |
| `public_transport`        | TEXT          | Information about public transportation options    |