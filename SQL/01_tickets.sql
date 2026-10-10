CREATE TABLE tickets(

    ticket_id  INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    title     VARCHAR(100) NOT NULL CHECK (TRIM(title) <> ''),
    customer_email     VARCHAR(100) NOT NULL CHECK(TRIM(customer_email) <> ''),
    description  VARCHAR(500) NOT NULL CHECK (TRIM(description) <> ''),
    status     VARCHAR(20) DEFAULT 'open' NOT NULL CHECK (status IN ('open', 'in_progress', 'closed')),
    priority   VARCHAR(20) DEFAULT 'medium' NOT NULL CHECK (priority IN ('low', 'medium', 'high')),
    created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP
);