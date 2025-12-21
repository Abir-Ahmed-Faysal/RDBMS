create type user_role as enum ('admin', 'customer');

create table if not exists users(
  user_id serial primary key,
  name varchar(100) not null,
  email varchar(150) not null unique,
  phone varchar(20) not null,
  role user_role not null
);



create type vehicle_type as enum ('car','bike','truck');
create type vehicle_status as enum ('available','rented','maintenance');

create table if not exists vehicles(
  vehicle_id serial primary key, 
  name varchar(100) not null,
  type vehicle_type not null,
  model int not null,
  registration_number varchar(200) not null unique,
  rental_price int not null,
  status vehicle_status not null
);



create type booking_status as enum('pending','confirmed','completed','cancelled');

create table if not exists bookings(
  booking_id serial primary key, 
  user_id int references users(user_id) on delete cascade,
  vehicle_id int references vehicles(vehicle_id) on delete cascade,
  start_date date not null,
  end_date date not null,
  status booking_status not null,
  total_cost numeric(10,2) not null
);
