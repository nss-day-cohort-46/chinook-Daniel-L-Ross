-- 15. playlists_track_count.sql: Provide a query that shows the total number of tracks in each playlist. 
        -- The Playlist name should be include on the resulant table.

SELECT 
    pl.name,
    pl.playlistId,
    COUNT(pt.PlaylistId) as trackCount
FROM Playlist pl
LEFT JOIN PlaylistTrack pt
    ON pt.playlistid = pl.playlistid
GROUP BY pl.PlaylistId
ORDER BY pl.name

