--#1
select * from invoice_line
where unit_price > 0.99;
--#2
select playlist_track_id from playlist_track
where playlist_id in (
  select playlist_id from playlist
  where name = 'Music'
);
--#3
select name from track
where track_id in (
  select track_id from playlist_track
  where playlist_id = 5
);
--#4
select track_id from track
where genre_id in (
  select genre_id from genre
  where name = 'Comedy'
);
--#5
select track_id from track
where album_id in (
  select album_id from album
  where title = 'Fireball'
);
--#6
select track_id from track
where album_id in (
  select album_id from album
  where artist_id in (
    select artist_id from artist
    where name = 'Queen'
  )
)