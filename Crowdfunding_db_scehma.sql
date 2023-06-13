CREATE TABLE category (
	category_id varchar(5) PRIMARY KEY NOT NULL,
	category varchar(30) NOT NULL
);
CREATE TABLE subcategory (
	subcategory_id varchar(10) PRIMARY KEY NOT NULL,
	subcategory varchar(50) NOT NULL
);
CREATE TABLE contact (
    contact_id INT PRIMARY KEY NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR NOT NULL
);
CREATE TABLE campaign (
    cf_id INT PRIMARY KEY NOT NULL,
    category_id VARCHAR(5) NOT NULL,
    contact_id INT NOT NULL,
    company_name VARCHAR NOT NULL,
    descripition VARCHAR NOT NULL,
    goal FLOAT NOT NULL,
    pledged FLOAT NOT NULL,
    outcome VARCHAR(15) NOT NULL,
    backers_count INT NOT NULL,
    country VARCHAR(3) NOT NULL,
    currency VARCHAR(3) NOT NULL,
    launch_date DATE NOT NULL,
    end_date date NOT NULL,
    subcategory_id VARCHAR(8) NOT NULL,
	FOREIGN KEY (category_id) REFERENCES category (category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory (subcategory_id),
	FOREIGN KEY (contact_id) REFERENCES contact (contact_id),
);

SELECT * FROM campaign