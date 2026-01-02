-- simple select
SELECT * 
FROM users;

-- simple select with join
SELECT 
    c.message, 
    u.name,
    c.publish_date 
FROM comments c,
    users u
WHERE 
    c.author_id = u.id 
;
    
    
-- select cross product
SELECT 
    c.*, 
    u.*
FROM comments c,
    users u
;