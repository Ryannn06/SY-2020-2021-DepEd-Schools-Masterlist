CREATE TABLE IF NOT EXISTS masterlist (
    beis_school_id INT PRIMARY KEY,
    region TEXT NOT NULL,
    division TEXT,
    district TEXT,
    school_name TEXT NOT NULL,
    street_address TEXT,
    municipality TEXT NOT NULL,
    legislative_district TEXT,
    barangay TEXT,
    sector TEXT,
    urban_rural TEXT,
    school_subclassification TEXT,
    modified_curricular_offering_classification TEXT
);