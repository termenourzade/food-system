use food_system;

create table users (
    id int primary key auto_increment,
    first_name nvarchar(50) not null,
    last_name nvarchar(50) not null,
    national_id nvarchar(10) unique not null
);

create table students (
    id int primary key auto_increment,
    user_id int not null,
    student_number nvarchar(8) unique not null,
    major nvarchar(50) not null,
    foreign key (user_id) references users(id)
);

create table professors (
    id int primary key auto_increment,
    user_id int not null,
    personnel_number nvarchar(10) unique not null,
    department nvarchar(50) not null,
    scientific_rank nvarchar(50) not null,
    foreign key (user_id) references users(id)
);


create table daily_menu (
    id int primary key auto_increment,
    date date not null
);

create table menu_details (
    id int primary key auto_increment,
    menu_id int not null,
    food_name nvarchar(50) not null,
    price decimal not null,
    foreign key (menu_id) references daily_menu(id)
);

create table orders (
    id int primary key auto_increment,
    user_id int not null,
    menu_id int not null,
    payment_status enum ('paid' , 'unpaid'),
    foreign key (user_id) references users (id),
    foreign key (menu_id) references daily_menu(id)
);

create table order_details (
    id int primary key auto_increment,
    order_id int not null,
    item_id int not null,
    quantity int not null,
    foreign key (order_id) references orders(id),
    foreign key (item_id) references menu_details(id)
);

