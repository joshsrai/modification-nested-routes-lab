module SongsHelper
    def artist_select(song)
        if song.artist.nil?
          select_tag "song[artist_id]", options_from_collection_for_select(Artist.all, :id, :name)
        else
          hidden_field_tag "song[artist_id]", song.artist_id
        end
      end
    #   Create a helper to display a drop-down list of artists if someone edits a song directly via /songs/:id/edit and to only display the artist's name if they are editing through nested routing. Name the helper method artist_select. Hint: You'll need to set a variable in the controller action to pass to the helper method as an argument along with a song instance.
    
    # Validate that new songs created for an artist via nested routing are created for valid artists, and redirect to /artists if not.
    
    # Validate that songs being edited via nested routing have a valid artist. Redirect to /artists if not.

    # Validate that songs being edited via nested routing are in the artist's songs collection. Redirect to /artists/:artist_id/songs if not.
end
