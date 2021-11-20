CREATE TABLE IF NOT EXISTS image(
    id serial primary key,
    picture bytea not null
);

CREATE TABLE IF NOT EXISTS users(
    id serial primary key,
    user_name text not null,
    password text not null,
    email text not null,
    birthday_date date not null,
    is_admin bool not null,
    phone text not null,
    image_id int REFERENCES image(id)
);

CREATE TABLE IF NOT EXISTS city(
    id serial primary key,
    region text not null,
    town text not null
);

CREATE TABLE IF NOT EXISTS advert(
    id serial primary key,
    city_id int REFERENCES city(id),
    datetime timestamp not null,
    advert_name text not null,
    description text not null,
    price int not null,
    user_id int REFERENCES users(id),
    image_id int REFERENCES image(id)
);

CREATE TABLE IF NOT EXISTS promo_code(
    id serial not null primary key,
    is_used bool not null,
    user_id int REFERENCES users(id),
    expires timestamp not null,
    promocode text not null,
    discount float not null
);


