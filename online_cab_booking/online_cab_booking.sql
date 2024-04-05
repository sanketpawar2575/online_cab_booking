create database online_cab_booking;
use online_cab_booking;

create table user_registration
(
id int primary key auto_increment,
full_name nvarchar(50),
Address nvarchar(100),
Email nvarchar(50),
mobile_no nvarchar(10),
pass nvarchar(50),
cpass nvarchar(50),
birth_date nvarchar(50),
gender nvarchar(10)
);




drop table driver_registration;

create table driver_registration
(
id int primary key auto_increment,
full_name nvarchar(50),
Address nvarchar(100),
Email nvarchar(20),
license_no nvarchar(50),
Adhar_no nvarchar(20),
UserId nvarchar(20),
pass nvarchar(20)
);

drop table user_cab_booking;

create table user_cab_booking
(
id int primary key auto_increment,
Full_name nvarchar(50),
contact_no nvarchar(10),
pickup_point nvarchar(20),
drop_point nvarchar(20),
kilo_meter nvarchar(10),
No_of_passenger nvarchar(10),
booking_date nvarchar(20),
booking_time nvarchar(20),
pakage nvarchar(30)
);

drop table payment;

create table user_payment
(
id int primary key auto_increment,
Amount nvarchar(20),
Full_name nvarchar(50),
Email nvarchar(20),
contact_no nvarchar(10)
);

create table driver_cab_details
(
id int primary key auto_increment,
cab_no nvarchar(20),
cab_type nvarchar(20),
no_of_seats nvarchar(10)
);

create table uplaod_status
(
id int primary key auto_increment,
upload_status nvarchar(10),
extra_km nvarchar(20)
);

drop table cab_details;
create table card_payment
(
id int primary key auto_increment,
card_number bigint(20)
);

create table user_driver_fpassword
(
id int primary key auto_increment,
username nvarchar(20),
email nvarchar(50),
otp nvarchar(20),
Rpassword nvarchar(10),
cpassword nvarchar(10)
);








