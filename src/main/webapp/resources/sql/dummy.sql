insert into admin(user_id, pass, name) values('admin','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4','관리자');
-------- 개인 Test 용 by KSH.. 페이지 없어서 노가다 했슴다..ㅎㅎ ----------

insert into paymethod (method) values('카카오결제');
insert into paymethod (method) values('신용카드');
insert into paymethod (method) values('간편결제');
insert into paymethod (method) values('휴대폰');


insert into order_summary(member_id,order_number,paymethod_id,price)values(1, '20220113033212', 1, 202110);
insert into order_summary(member_id,order_number,paymethod_id,price) values(2, '20220113033215', 3, 22810);

insert into order_detail (order_summary_id, product_id, order_count) values(1,1,2);
insert into order_detail (order_summary_id, product_id, order_count) values(2,2,2);
insert into order_detail (order_summary_id, product_id, order_count) values(3,3,1);
insert into order_detail (order_summary_id, product_id, order_count) values(4,4,2);
insert into order_detail (order_summary_id, product_id, order_count) values(5,5,1);
insert into order_detail (order_summary_id, product_id, order_count) VALUES(6,6,4);
insert into order_detail (order_summary_id, product_id, order_count) VALUES(7,7,2);
insert into order_detail (order_summary_id, product_id, order_count) VALUES(8,8,6);
insert into order_detail (order_summary_id, product_id, order_count) VALUES(9,9,2);
insert into order_detail (order_summary_id, product_id, order_count) VALUES(10,10,1);
insert into order_detail (order_summary_id, product_id, order_count) VALUES(11,11,1);
insert into order_detail (order_summary_id, product_id, order_count) VALUES(12,12,1);
insert into order_detail (order_summary_id, product_id, order_count) VALUES(13,13,1);
insert into order_detail (order_summary_id, product_id, order_count) VALUES(14,14,1);
insert into order_detail (order_summary_id, product_id, order_count) VALUES(15,15,1);
insert into order_detail (order_summary_id, product_id, order_count) VALUES(16,16,1);
insert into order_detail (order_summary_id, product_id, order_count) VALUES(17,17,1);
insert into order_detail (order_summary_id, product_id, order_count) VALUES(18,18,1);
insert into order_detail (order_summary_id, product_id, order_count) VALUES(19,19,1);
insert into order_detail (order_summary_id, product_id, order_count) VALUES(20,20,21);