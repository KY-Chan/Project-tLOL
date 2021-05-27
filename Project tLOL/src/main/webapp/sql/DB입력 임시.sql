select * from accounts;
insert into accounts values(1,'master','master','마왕', sysdate, 'aaa@nav.com', 'n', '1');
select * from article;
insert into article values(1, 1, 1, '첫글', '첫글이다', sysdate, 0, 0, 'n');
insert into article values(2, 1, 1, '뉴스첫글', '첫글이다', sysdate, 0, 0, 'n');
insert into article values(2, 2, 1, '뉴스두번째', '두루두루둘', sysdate, 0, 0, 'n');
insert into article values(2, 3, 1, '더미', '더미', sysdate, 0, 0, 'n');
insert into article values(2, 4, 1, '더미', '더미', sysdate, 0, 0, 'n');
insert into article values(2, 5, 1, '더미', '더미', sysdate, 0, 0, 'n');
insert into article values(2, 6, 1, '더미', '더미', sysdate, 0, 0, 'n');
insert into article values(2, 7, 1, '더미', '더미', sysdate, 0, 0, 'n');
insert into article values(2, 8, 1, '더미', '더미', sysdate, 0, 0, 'n');
insert into article values(2, 9, 1, '더미', '더미', sysdate, 0, 0, 'n');
insert into article values(2, 10, 1, '더미', '더미', sysdate, 0, 0, 'n');
insert into article values(2, 11, 1, '더미', '더미', sysdate, 0, 0, 'n');
insert into article values(2, 12, 1, '더미', '더미', sysdate, 0, 0, 'n');
select * from (select rowNum rn from article e) where rn between ? and ?

select * from board;
insert into board values(1, '공지사항');
insert into board values(2, '뉴스');
insert into board values(3, '자유게시판');
insert into board values(4, '매칭게시판');
insert into board values(5, '갤러리/영상');
insert into board values(6, '팁/노하우');

select * from article;
select * from (select rowNum rn, e.* from (select * from article where board_num = 2 and article_del = 'n') e) where rn between 2 and 10;