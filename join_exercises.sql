use join_test_db;

# Insert 4 new users into the database. One should have a NULL role. The other three should be authors.
INSERT INTO users (name, email, role_id) VALUES
    ('user1', 'bob@example.com', 2),
    ('user2', 'joe@example.com', 2),
    ('user3', 'sally@example.com', 2),
    ('user4', 'adam@example.com', null);

# Join
SELECT users.name, roles.name
FROM users
JOIN roles ON users.role_id = roles.id;

# Left join
SELECT users.name, roles.name
FROM users
LEFT JOIN roles ON users.role_id = roles.id;

# RIGHT JOIN
SELECT users.name, roles.name
FROM users
RIGHT JOIN roles ON users.role_id = roles.id;

# Add Count
SELECT roles.name, COUNT(users.id)
FROM roles
JOIN users ON roles.id = users.role_id
GROUP BY roles.name;

SELECT COUNT(*) FROM users;
SELECT COUNT(*) FROM roles;



