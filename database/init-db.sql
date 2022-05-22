-- create database wardine;
\c wardine;

create sequence messhall_admins_seq;
create sequence messhall_seq;
create sequence menu_seq;
create sequence main_admin_seq;
create sequence recipe_seq;
create sequence ingredient_seq;

create table menu (
    menu_uid varchar(255),
    recipe_uid varchar(255),
    time_stamp date not null default current_date
);

create table messhall (
    messhalls_uid varchar(255) primary key not null default nextval('messhall_seq'),
    street varchar (255) not null,
    city varchar (255) not null,
    country varchar (255) not null,
    menu_uid varchar (255) not null,
    status varchar (255) not null,
    attendance_number integer not null
);

create table messhalls_admins (
    messhalls_admins_uid varchar(255) primary key not null default nextval('messhall_admins_seq'),
    nickname varchar(255) not null,
    messhall_uid varchar(255) unique 
);

create table main_admins (
    main_admin_uid varchar(255) primary key not null default nextval('main_admin_seq'),
    messhall_admin_uid varchar(255),
    nickname varchar(255) not null
);

create table recipe (
    recipe_uid varchar(255) primary key not null,
    messhall_uid varchar(255),
    nname varchar(255) not null,
    description varchar(1000) not null,
    calories integer,
    cooking_time integer,
    instructions varchar(255),
    portions integer
);

create table stock_ingredient (
    messhall_uid varchar(255),
    ingredient_uid varchar(255),
    amount integer
);

create table recipe_ingredients (
    ingredient_uid varchar(255),
    recipe_uid varchar(255),
    amount integer
);

create table ingredient (
    ingredient_uid varchar(255) primary key not null default nextval('ingredient_seq'),
    ingredient_name varchar(255),
    calories integer
);
