-- Create Category table
CREATE TABLE Category (
    category_id VARCHAR(999) PRIMARY KEY,
    category_name VARCHAR(999)
);

-- Create Subcategory table
CREATE TABLE Subcategory (
    subcategory_id VARCHAR(999) PRIMARY KEY,
    subcategory_name VARCHAR(999)
);

-- Create Contacts table
CREATE TABLE Contacts (
    contact_id INT PRIMARY KEY,
    first_name VARCHAR(999),
    last_name VARCHAR(999),
    email VARCHAR(999)
);
-- Create Campaign table with foreign keys
CREATE TABLE Campaign (
    cf_id SERIAL PRIMARY KEY,
    contact_id INT REFERENCES Contacts(contact_id),
	company_name VARCHAR(999),
	description VARCHAR(999),
    goal FLOAT,
    pledged FLOAT,
    outcome VARCHAR(999),
    backers_count INT,
    country VARCHAR(999),
    currency VARCHAR(999),
    launched_date VARCHAR(999),
    end_date VARCHAR(999),
    staff_pick BOOLEAN,
    spotlight BOOLEAN,
	category VARCHAR(999),
	subcategory VARCHAR(999),
	category_id VARCHAR(999) REFERENCES Category(category_id),
    subcategory_id VARCHAR(999) REFERENCES Subcategory(subcategory_id)
);

SELECT * FROM Category;
SELECT * FROM Subcategory;
SELECT * FROM Contacts;
SELECT * FROM Campaign;