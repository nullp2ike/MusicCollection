# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

connection = ActiveRecord::Base.connection();
connection.execute("DELETE FROM genres;")    
connection.execute("DELETE FROM sqlite_sequence WHERE name = 'genres';")

Genre.delete_all
genres = Genre.create([{ genre: 'Shoegaze' }, {genre: 'Indie'},{genre: 'Pop'}])

connection.execute("DELETE FROM labels;")    
connection.execute("DELETE FROM sqlite_sequence WHERE name = 'labels';")

Label.delete_all
labels = Label.create([{label: 'Seksound'},{label: 'Mortimer Snerd'},{label: 'Self released'}])

connection.execute("DELETE FROM artists;")    
connection.execute("DELETE FROM sqlite_sequence WHERE name = 'artists';")

Artist.delete_all
artists = Artist.create([{artist: 'Vaiko Eplik'},{artist: 'Pia Fraus'},{artist: 'Onu Bella'}])

connection.execute("DELETE FROM formats;")    
connection.execute("DELETE FROM sqlite_sequence WHERE name = 'formats';")

Format.delete_all
formats = Format.create([{format: 'CD'},{format: 'Kassett'},{format: 'Vinuul'}])

connection.execute("DELETE FROM albums;")    
connection.execute("DELETE FROM sqlite_sequence WHERE name = 'albums';")

Album.delete_all
Album.create(title: 'After Summer',
year: 2008,
picture: 'pf_as_08.jpg',
description: 'Viimane Pia Frausi album',
artist: 2,
label: 1,
genre: 1,
format: 1)

Album.create(title: 'V',
year: 2008,
picture: 've_v_11.jpg',
description: 'Viies Vaiko Epliku album',
artist: 1,
label: 2,
genre: 2,
format: 3)

Album.create(title: 'Ma votsin viina',
year: 1993,
picture: 'ob_mvv_93.jpg',
description: 'Legendaarne Onu Bella album',
artist: 3,
label: 3,
genre: 3,
format: 2)

connection.execute("DELETE FROM tracklists;")    
connection.execute("DELETE FROM sqlite_sequence WHERE name = 'tracklists';")

Tracklist.delete_all
Tracklist.create(album: 1, trackname: "Mute the birds")
Tracklist.create(album: 1, trackname: "Springsister")
Tracklist.create(album: 1, trackname: "Doctor Optimism")

Tracklist.create(album: 2, trackname: "Mona Lisa naeratus")
Tracklist.create(album: 2, trackname: "Soolasem kui sool")
Tracklist.create(album: 2, trackname: "Tants klavesiini umber")

Tracklist.create(album: 3, trackname: "Opime puskarit tegema")
Tracklist.create(album: 3, trackname: "Ma votsin viina")
Tracklist.create(album: 3, trackname: "Koolis on vahva")

connection.execute("DELETE FROM collections;")    
connection.execute("DELETE FROM sqlite_sequence WHERE name = 'collections';")

Owner.delete_all
Owner.create(username: "Risko", password: "parool", email: "risko.ruus@gmail.com")
Owner.create(username: "Kobras", password: "parool", email: "fraxid@msn.com")

Collection.delete_all
Collection.create(album: 1, owner: 1)
Collection.create(album: 2, owner: 1)
Collection.create(album: 3, owner: 2)
# . . .