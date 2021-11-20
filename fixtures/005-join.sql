SELECT * FROM users AS u LEFT JOIN advert AS a ON u.id = a.user_id;

SELECT * FROM users AS u LEFT JOIN advert AS a ON u.id = a.user_id RIGHT JOIN city AS c ON a.city_id = c.id;


