select * from accounts;
insert into accounts values(1,'master','master','마왕', sysdate, 'aaa@nav.com', 'n', '1');
select * from article;
insert into article values(1, 1, 1, '첫글', '첫글이다', sysdate, 0, 0, 'n');
insert into article values(2, 1, 1, '뉴스첫글', '첫글이다', sysdate, 0, 0, 'n');
insert into article values(2, 2, 1, '뉴스두번째', '두루두루둘', sysdate, 0, 0, 'n');
select * from (select rowNum rn from article e) where rn between ? and ?