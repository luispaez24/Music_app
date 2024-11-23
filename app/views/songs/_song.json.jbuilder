json.extract! song, :id, :title, :artist, :album, :release_year, :genre, :created_at, :updated_at
json.url song_url(song, format: :json)
