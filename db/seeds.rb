# encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.delete_all
Album.delete_all
Track.delete_all
Genre.delete_all
Label.delete_all
Format.delete_all

artist = Artist.find_or_create_by_name('Onu Bella')
genre = Genre.find_or_create_by_name('Eesti')
label = Label.find_or_create_by_name('Valindo')
format = Format.find_or_create_by_name('Kassett')
album = Album.find_or_create_by_artist_id_and_genre_id_and_label_id_and_format_id_and_title_and_year_and_picture_and_description(artist.id, genre.id, label.id, format.id,'Ma võtsin viina',1992,'ob_mvv_93.jpg','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam at sem urna, vitae convallis nulla. Fusce ut lorem id ante egestas hendrerit. Suspendisse laoreet tellus eu turpis imperdiet vitae elementum nulla mollis. Sed justo orci, egestas id bibendum imperdiet, viverra sed velit. Morbi quis neque a nisl egestas sollicitudin. Nam.')


%w(Aisakell 
  Uude\ maailma\ minek 
  Seksikas\ poiss).each do |name|
  Track.find_or_create_by_album_id_and_title(album.id, name)
end

artist = Artist.find_or_create_by_name('Pia Fraus')
genre = Genre.find_or_create_by_name('Shoegaze')
label = Label.find_or_create_by_name('Seksound')
format = Format.find_or_create_by_name('CD')
album = Album.find_or_create_by_artist_id_and_genre_id_and_label_id_and_format_id_and_title_and_year_and_picture_and_description(artist.id, genre.id, label.id, format.id,'After Summer',2008,'pf_as_08.jpg','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam at sem urna, vitae convallis nulla. Fusce ut lorem id ante egestas hendrerit. Suspendisse laoreet tellus eu turpis imperdiet vitae elementum nulla mollis. Sed justo orci, egestas id bibendum imperdiet, viverra sed velit. Morbi quis neque a nisl egestas sollicitudin. Nam.')


%w(Springsister
  Yennisey 
  Sailing\ Yes).each do |name|
  Track.find_or_create_by_album_id_and_title(album.id, name)
end

artist = Artist.find_or_create_by_name('Radar')
genre = Genre.find_or_create_by_name('Fusion')
label = Label.find_or_create_by_name('Melodija')
format = Format.find_or_create_by_name('Vinüül')
album = Album.find_or_create_by_artist_id_and_genre_id_and_label_id_and_format_id_and_title_and_year_and_picture_and_description(artist.id, genre.id, label.id, format.id,'Balti Rannik',1987,'ra_br_87.jpg','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam at sem urna, vitae convallis nulla. Fusce ut lorem id ante egestas hendrerit. Suspendisse laoreet tellus eu turpis imperdiet vitae elementum nulla mollis. Sed justo orci, egestas id bibendum imperdiet, viverra sed velit. Morbi quis neque a nisl egestas sollicitudin. Nam.')


%w(Viraaž
  Tuhkvalgus 
  Päikesepiste).each do |name|
  Track.find_or_create_by_album_id_and_title(album.id, name)
end
