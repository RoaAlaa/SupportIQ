INSERT INTO tickets(
    title,
    customer_email,
    description,
    status,
    priority
) VALUES (
    ' Insert an email containing only spaces ',
    'Insert a description containing only spaces ',
    'Omit status and priority ',
    'open',
    'not_a_valid_priority'
);