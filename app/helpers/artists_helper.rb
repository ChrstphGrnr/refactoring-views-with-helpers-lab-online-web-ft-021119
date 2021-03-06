module ArtistsHelper
    def display_artist(song)
        if song.artist_id 
            link_to Artist.find(song.artist_id).name, artist_path(song.artist_id)
        else
            link_to 'Add Artist', edit_song_path(song) 
        end
    end
end
