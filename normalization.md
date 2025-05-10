CREATE TABLE Address (
    address_id SERIAL PRIMARY KEY,
    street VARCHAR(100),
    city VARCHAR(50),
    state VARCHAR(50),
    country VARCHAR(50),
    postal_code VARCHAR(20)
);

CREATE TABLE Property (
    property_id SERIAL PRIMARY KEY,
    host_id INT REFERENCES User(user_id),
    address_id INT REFERENCES Address(address_id),
    title VARCHAR(100),
    description TEXT,
    price_per_night DECIMAL(10, 2),
    bedrooms INT,
    bathrooms INT,
    max_guests INT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);