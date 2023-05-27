insert into customer(username, password, created_at) values ('user one' , 'password' , '2012-05-13');
insert into customer(username, password, created_at) values ('user two' , 'pass' , '2023-04-03');
insert into customer(username, password, created_at) values ('user three' , 'doesthiswork' , '2009-02-12');
insert into customer(username, password, created_at) values ('user four' , 'somethinghard' , '2003-01-01');
insert into customer(username, password, created_at) values ('user five' , 'tuffwords' , '1999-11-08');

insert into item(name, price, description, costomer_id) values('thing one' , 1 , 'this is a great thing one');
insert into item(name, price, description) values('thing two' , 2 , 'this is a great thing two');
insert into item(name, price, description) values('thing three' , 3 , 'this is a great thing three');
insert into item(name, price, description) values('thing four' , 4 , 'this is a great thing four');
insert into item(name, price, description) values('thing five' , 5 , 'this is a great thing five');
insert into item(name, price, description) values('thing six' , 6 , 'this is a great thing six');
insert into item(name, price, description) values('thing seven' , 7 , 'this is a great thing seven');
insert into item(name, price, description) values('thing nine' , 9 , 'this is a great thing nine');
insert into item(name, price, description) values('thing ten' , 10 , 'this is a great thing ten');

insert into `order`(created_at, customer_id) values('2023-01-01 12:00:00' , '1');
insert into `order`(created_at, customer_id) values('2023-05-02 09:00:00' , '1');
insert into `order`(created_at, customer_id) values('2023-05-03 11:45:00' , '3');
insert into `order`(created_at, customer_id) values('2023-05-04 10:00:00' , '4');
insert into `order`(created_at, customer_id) values('2023-05-05 02:15:56' , '5');

insert into order_item(order_id, item_id) values('1' ,'1');
insert into order_item(order_id, item_id) values('2' ,'2');
insert into order_item(order_id, item_id) values('3' ,'3');
insert into order_item(order_id, item_id) values('4' ,'4');
insert into order_item(order_id, item_id) values('5' ,'5');
insert into order_item(order_id, item_id) values('5' ,'6');
insert into order_item(order_id, item_id) values('5' ,'7');
insert into order_item(order_id, item_id) values('5' ,'8');
insert into order_item(order_id, item_id) values('4' ,'9');
insert into order_item(order_id, item_id) values('4' ,'10');
insert into order_item(order_id, item_id) values('3' ,'10');
insert into order_item(order_id, item_id) values('3' ,'9');
insert into order_item(order_id, item_id) values('2' ,'8');
insert into order_item(order_id, item_id) values('2' ,'7');
insert into order_item(order_id, item_id) values('1' ,'6');

select customer.username from customer inner join `order` on customer.id = `order`.customer_id;
select customer.username , `order`.customer_id from customer inner join `order` on customer.id = `order`.customer_id;mkdir
select avg(item.price) , order_item.item_id from item inner join order_item on item.id = order_item.item_id;
select customer.username , max(item.price) as highestprice from customer inner join `order` on customer.id = `order`.customer_id inner join `order` on order_item.order_id = `order`.id inner join order_item on item.id = order_item.item_id ;

