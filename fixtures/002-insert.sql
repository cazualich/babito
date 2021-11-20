INSERT INTO image(picture) VALUES('link');
INSERT INTO image(picture) VALUES('masha');

INSERT INTO users(user_name, password, email, birthday_date, is_admin, phone, image_id)
VALUES('Sasha', '1111', 'sasha2007@gmail.com', '2007-01-01', false, '+79060858821', 1);
INSERT INTO users(user_name, password, email, birthday_date, is_admin, phone, image_id)
VALUES('Masha', '0000', 'masha2008@gmail.com', '2008-01-01', true, '+79060858822', 3);

INSERT INTO city(region, town) VALUES('Moscow', 'Moscow');

INSERT INTO image(picture) VALUES('Собака');
INSERT INTO advert(city_id, datetime, advert_name, description, price, user_id, image_id)
VALUES(1, '2021-10-30', 'Продам', 'Собаку', 1000, 1, 2);

INSERT INTO promo_code(is_used, user_id, expires, promocode, discount)
VALUES(false, 1, '2022-10-30', 'OFF15', 0.15);

INSERT INTO advert(city_id, datetime, advert_name, description, price, user_id, image_id)
VALUES(1, '2021-11-01', 'Продам кота', 'Чёрный кот', 5000, 2, 3);

INSERT INTO advert(city_id, datetime, advert_name, description, price, user_id, image_id)
VALUES(1, '2021-11-01', 'Продам кота', 'Чёрный кот', 8000, 1, 2);

INSERT INTO advert(city_id, datetime, advert_name, description, price, user_id, image_id)
VALUES(1, '2021-11-01', 'Продам к0та', 'Черный кот', 10000, 1, 2);

INSERT INTO image(picture) VALUES('grisha.png');
INSERT INTO users(user_name, password, email, birthday_date, is_admin, phone, image_id)
VALUES('Grisha', '1010', 'GRIGORIY2009@gmail.com', '2009-01-04', false, '+79060858829', 1);

INSERT INTO city(region, town) VALUES('Moscow obl.', 'Podolsk');
