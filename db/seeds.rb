# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
jonathan = User.create(first_name: 'Jonathan', last_name: 'Stricklin', username: 'jstricklin', password_digest: 'hi', typeof: 'musician')
jerod = User.create(first_name: 'Jerod', last_name: 'Patrick', username: 'jpatrick', password_digest: 'hi', typeof: 'curator')

sl1 = SongList.create(name: 'jslist', user_id: jonathan.id)
jl1 = JukeboxList.create(location: 'austin', user_id: jerod.id)

s1 = Song.create(name: 'Stop this Train', genre: 'Rock', artist: 'John Mayer')
s2 = Song.create(name: 'Perfectly Lonely', genre: 'Rock', artist: 'John Mayer')
s3 = Song.create(name: 'Something like Olivia', genre: 'Rock', artist: 'John Mayer')
s4 = Song.create(name: 'Gravity', genre: 'Rock', artist: 'John Mayer')

sls1 = SongListSong.create(song_list_id: sl1.id, song_id: s1.id)
sls2 = SongListSong.create(song_list_id: sl1.id, song_id: s2.id)
sls3 = SongListSong.create(song_list_id: sl1.id, song_id: s3.id)
sls4 = SongListSong.create(song_list_id: sl1.id, song_id: s4.id)
jls1 = JukeboxListSong.create(jukebox_list_id: jl1.id, song_id: s1.id)
jls2 = JukeboxListSong.create(jukebox_list_id: jl1.id, song_id: s2.id)
