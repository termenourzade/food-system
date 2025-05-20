use food_system;
insert into users(first_name, last_name, national_id)
values('ّپرتو' , 'رادان', '0548987422');
insert into users(first_name, last_name, national_id)
values('نازنین','خالدی', '0312325499');
insert into users(first_name, last_name, national_id)
values('بیژن', 'نوری', '021541215');
insert into users(first_name, last_name, national_id)
values('ترلان', 'محمدی', '0315654587');
insert into users(first_name, last_name, national_id)
values('سیاوش', 'بیگی', '0545213699');


insert into students(user_id, student_number, major)
values(1, '40315422', 'مهندسی برق');
insert into students(user_id, student_number, major)
values(2, '39812447', 'مهندسی مکانیک');
insert into students(user_id, student_number, major)
values(4, '40352046', 'فیزیک');

insert into professors(user_id, personnel_number, department, scientific_rank)
values(2, '395124', 'فیزیک', 'استادیار');
insert into professors(user_id, personnel_number, department, scientific_rank)
values(3, '390548', 'ریاضیات و علوم کامپیوتر', 'استاد');
insert into professors(user_id, personnel_number, department, scientific_rank)
values(5, '384245', 'شیمی', 'استاد');


insert into daily_menu(date) values
('1404-02-20'),
('1404-02-21'),
('1404-02-22');

insert into menu_details (menu_id, food_name, price) values
(1, 'چلو کباب کوبیده', 25000.00),
(1, 'شنیسل مرغ', 15000.00),
(2, 'باقالی پلو با مرغ', 20000.00),
(2, 'قورمه سبزی', 25000.00),
(3, 'باقالی پلو با مرغ', 20000.00),
(3, 'چلو کباب کوبیده', 25000.00);

insert into orders(user_id, menu_id, payment_status) values
(2, 1,'paid'),
(1, 2, 'paid'),
(5, 3, 'unpaid');

insert into order_details(order_id, item_id, quantity) values
(1, 1, 2),
(2, 4, 1),
(3, 2, 2),
(3, 1, 1);
