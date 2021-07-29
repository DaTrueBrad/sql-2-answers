create table user_list (
  user_id serial primary key,
  name varchar(20),
  email varchar(50)
);

create table products (
  product_id serial primary key,
  name varchar(50),
  price float
);

create table cart (
  user_id int,
  product_id int,
  quantity integer,
    foreign key (user_id) references user_list(user_id),
  foreign key (product_id) references products(product_id)
);

insert into products (
  name,
  price
) values (
  'water bottle',
  1.99
), (
  'snickers',
  0.99
), (
  'glasses',
  15.99
), (
  'phone',
  599
), (
  'pens',
  3.99
);

insert into user_list (
  name,
  email
) values (
  'ricky',
  'rickybobby@gmail.com'
), (
  'lindsie',
  'lindimindi@hotmail.com'
), (
  'jon',
  'jonjon@gmail.com'
);

insert into cart (
  user_id,
  product_id,
  quantity
) values (1, 4, 1), (1, 3, 2), (2, 1, 4), (2, 2, 1), (3, 5, 2), (3, 2, 10);

select * from cart
where user_id = 1;

select * from cart c
join user_list u
on c.user_id = u.user_id;

select sum(c.product_id * c.quantity), u.name as total from cart c
join user_list u
on c.user_id = u.user_id
where u.user_id = 1
group by u.name;

update cart
set quantity = 789
where user_id = 2 and product_id = 2