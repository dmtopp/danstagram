create database danstagram;
\c danstagram;
create table users (id serial primary key, username varchar(50), email varchar(50), password varchar(50));
create table photos (id serial primary key, url varchar(255), owner_id references users (id), caption varchar(255));
create table hashtags (id serial primary key, text varchar(50));
create table phototag (photo_id integer references photos (id), hashtag_id integer references hashtags(id));
