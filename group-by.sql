-- #1
select count(track_id), genre.name from track
join genre
on track.genre_id = genre.genre_id
group by genre.genre_id
-- #2
select count(track_id), genre.name from track
join genre
on track.genre_id = genre.genre_id
where genre.name = 'Pop' or genre.name = 'Rock'
group by genre.genre_id
-- #3
select count(al.artist_id), ar.name from album al
join artist ar
on al.artist_id = ar.artist_id
group by ar.name
