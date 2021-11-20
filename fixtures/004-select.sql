SELECT * FROM users ORDER BY id;
SELECT * FROM users ORDER BY id DESC;

SELECT max(price) FROM advert;
SELECT min(price) FROM advert;
SELECT avg(price) FROM advert;

SELECT count(id) FROM users;
SELECT u.user_name, count(a.id) FROM users AS u JOIN advert AS a on u.id = a.user_id GROUP BY u.user_name;
SELECT u.user_name, a.id FROM users AS u JOIN advert AS a on u.id = a.user_id;

SELECT DISTINCT advert_name FROM advert;
SELECT DISTINCT advert_name FROM advert ORDER BY advert_name;