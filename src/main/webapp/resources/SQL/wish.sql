create table wish(
    wish_title varchar2(100),
    wish_id varchar2(100)
)

drop table wish

select * from wish

delete wish

select * from webtoon wb, wish ws
		where wb.webtoon_title = ws.wish_title

commit



select * from wish where wish_id = 'zxzxzx'


alter table wish add wish_thumbnail varchar2(100)