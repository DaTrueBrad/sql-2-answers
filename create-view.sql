-- #1
create view rock as
select tr.name from track tr
join genre g
on tr.genre_id = g.genre_id
where g.name = 'Rock'
-- #2
create view classical_count as
select count(tr.track_id) from track tr
join playlist_track plt
on tr.track_id = plt.track_id
join playlist pl
on plt.playlist_id = pl.playlist_id
where pl.name = 'Classical'