-- problem 1
select * from invoice_line
where unit_price > 0.99;
-- problem 2
select i.invoice_date, c.first_name, c.last_name, i.total
from invoice i
join customer c on i.customer_id = c.customer_id;
-- problem 3 & 4
select c.first_name as customer_first_name, c.last_name as customer_last_name, e.first_name as support_first_name, e.last_name as support_last_name from customer c
join employee e
on c.support_rep_id = e.employee_id;
-- problem 5
select alb.title, art.name from album alb
join artist art
on alb.artist_id = art.artist_id; 
-- problem 6
select plt.track_id from playlist_track plt
join playlist pl
on pl.playlist_id = plt.playlist_id
where name = 'Music';
-- problem 7
select name from playlist_track pt
join track tr
on pt.track_id = tr.track_id
where pt.playlist_id = 5;
-- problem 8
select pl.name, tr.name from playlist pl
join playlist_track pt
on pl.playlist_id = pt.playlist_id
join track tr
on pt.track_id = tr.track_id
-- problem 9
select tr.name, a.title from album a
join track tr
on a.album_id = tr.album_id
join genre g
on tr.genre_id = g.genre_id
where g.name = 'Alternative & Punk';