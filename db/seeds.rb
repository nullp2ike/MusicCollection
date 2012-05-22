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
album = Album.find_or_create_by_artist_id_and_genre_id_and_label_id_and_format_id_and_title_and_year_and_photo_file_name_and_photo_remote_url_and_photo_updated_at_and_photo_file_size_and_photo_content_type_and_description(artist.id, genre.id, label.id, format.id,'Ma võtsin viina',1992,'ob_mvv_93.jpg','','2012-05-22 12:18:29.641011,38197',123,'image/jpeg','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam at sem urna, vitae convallis nulla. Fusce ut lorem id ante egestas hendrerit. Suspendisse laoreet tellus eu turpis imperdiet vitae elementum nulla mollis. Sed justo orci, egestas id bibendum imperdiet, viverra sed velit. Morbi quis neque a nisl egestas sollicitudin. Nam.')

%w(Aisakell 
  Uude\ maailma\ minek 
  Seksikas\ poiss
  ).each do |name|
  Track.find_or_create_by_album_id_and_title_and_artist_id_and_order_number_and_minutes_and_seconds(album.id, name, artist.id, 1, 2, 3)
end

artist = Artist.find_or_create_by_name('Pia Fraus')
genre = Genre.find_or_create_by_name('Shoegaze')
label = Label.find_or_create_by_name('Seksound')
format = Format.find_or_create_by_name('CD')
album = Album.find_or_create_by_artist_id_and_genre_id_and_label_id_and_format_id_and_title_and_year_and_photo_file_name_and_photo_remote_url_and_photo_updated_at_and_photo_file_size_and_photo_content_type_and_description(artist.id, genre.id, label.id, format.id,'After Summer',2008,'pf_as_08.jpg','','2012-05-22 12:18:29.641011,38197', 123 ,'image/jpeg','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam at sem urna, vitae convallis nulla. Fusce ut lorem id ante egestas hendrerit. Suspendisse laoreet tellus eu turpis imperdiet vitae elementum nulla mollis. Sed justo orci, egestas id bibendum imperdiet, viverra sed velit. Morbi quis neque a nisl egestas sollicitudin. Nam.')

%w(Springsister
  Yennisey 
  Sailing\ Yes).each do |name|
  Track.find_or_create_by_album_id_and_title_and_artist_id_and_order_number_and_minutes_and_seconds(album.id, name, artist.id, 1, 2, 3)
end

artist = Artist.find_or_create_by_name('Radar')
genre = Genre.find_or_create_by_name('Fusion')
label = Label.find_or_create_by_name('Melodija')
format = Format.find_or_create_by_name('Vinüül')
album = Album.find_or_create_by_artist_id_and_genre_id_and_label_id_and_format_id_and_title_and_year_and_photo_file_name_and_photo_remote_url_and_photo_updated_at_and_photo_file_size_and_photo_content_type_and_description(artist.id, genre.id, label.id, format.id,'Balti Rannik',1987,'ra_br_87.jpg','','2012-05-22 12:18:29.641011,38197',123,'image/jpeg','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam at sem urna, vitae convallis nulla. Fusce ut lorem id ante egestas hendrerit. Suspendisse laoreet tellus eu turpis imperdiet vitae elementum nulla mollis. Sed justo orci, egestas id bibendum imperdiet, viverra sed velit. Morbi quis neque a nisl egestas sollicitudin. Nam.')

%w(Viraaž
  Tuhkvalgus 
  Päikesepiste).each do |name|
  Track.find_or_create_by_album_id_and_title_and_artist_id_and_order_number_and_minutes_and_seconds(album.id, name, artist.id, 1, 2, 3)
end

artist = Artist.find_or_create_by_name('My Bloody Valentine')
genre = Genre.find_or_create_by_name('Shoegaze')
label = Label.find_or_create_by_name('Creation')
format = Format.find_or_create_by_name('Vinüül')
album = Album.find_or_create_by_artist_id_and_genre_id_and_label_id_and_format_id_and_title_and_year_and_photo_file_name_and_photo_remote_url_and_photo_updated_at_and_photo_file_size_and_photo_content_type_and_description(artist.id, genre.id, label.id, format.id,'Loveless',1991,'ra_br_87.jpg','','2012-05-22 12:18:29.641011,38197',123,'image/jpeg','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam at sem urna, vitae convallis nulla. Fusce ut lorem id ante egestas hendrerit. Suspendisse laoreet tellus eu turpis imperdiet vitae elementum nulla mollis. Sed justo orci, egestas id bibendum imperdiet, viverra sed velit. Morbi quis neque a nisl egestas sollicitudin. Nam.')

%w(Only\ Shallow
  Loomer 
  Touched
  To\ Here\ Knows\ When
  When\ You\ Sleep
  I\ Only\ Said).each do |name|
  Track.find_or_create_by_album_id_and_title_and_artist_id_and_order_number_and_minutes_and_seconds(album.id, name, artist.id, 1, 2, 3)
end

artist = Artist.find_or_create_by_name('Collage')
genre = Genre.find_or_create_by_name('Etno')
label = Label.find_or_create_by_name('Melodija')
format = Format.find_or_create_by_name('Vinüül')
album = Album.find_or_create_by_artist_id_and_genre_id_and_label_id_and_format_id_and_title_and_year_and_photo_file_name_and_photo_remote_url_and_photo_updated_at_and_photo_file_size_and_photo_content_type_and_description(artist.id, genre.id, label.id, format.id,'Käokiri',1978,'ra_br_87.jpg','','2012-05-22 12:18:29.641011,38197',123,'image/jpeg','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam at sem urna, vitae convallis nulla. Fusce ut lorem id ante egestas hendrerit. Suspendisse laoreet tellus eu turpis imperdiet vitae elementum nulla mollis. Sed justo orci, egestas id bibendum imperdiet, viverra sed velit. Morbi quis neque a nisl egestas sollicitudin. Nam.')

%w(Mets\ neiude\ vahel
  Laula\ kuni\ elad 
  Loomine).each do |name|
  Track.find_or_create_by_album_id_and_title_and_artist_id_and_order_number_and_minutes_and_seconds(album.id, name, artist.id, 1, 2, 3)
end

artist = Artist.find_or_create_by_name('Jim Arrow & The Anachrones')
genre = Genre.find_or_create_by_name('Rock')
label = Label.find_or_create_by_name('Kuldnokk')
format = Format.find_or_create_by_name('Kassett')
album = Album.find_or_create_by_artist_id_and_genre_id_and_label_id_and_format_id_and_title_and_year_and_photo_file_name_and_photo_remote_url_and_photo_updated_at_and_photo_file_size_and_photo_content_type_and_description(artist.id, genre.id, label.id, format.id,'Jim Arrow & The Anachrones',1989,'ra_br_87.jpg','','2012-05-22 12:18:29.641011,38197',123,'image/jpeg','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam at sem urna, vitae convallis nulla. Fusce ut lorem id ante egestas hendrerit. Suspendisse laoreet tellus eu turpis imperdiet vitae elementum nulla mollis. Sed justo orci, egestas id bibendum imperdiet, viverra sed velit. Morbi quis neque a nisl egestas sollicitudin. Nam.')

%w(Steeltown\ puppet
  Strangeman 
  Green\ Grass).each do |name|
  Track.find_or_create_by_album_id_and_title_and_artist_id_and_order_number_and_minutes_and_seconds(album.id, name, artist.id, 1, 2, 3)
end

artist = Artist.find_or_create_by_name('Röövel Ööbik')
genre = Genre.find_or_create_by_name('Indie')
label = Label.find_or_create_by_name('Kuldnokk')
format = Format.find_or_create_by_name('Kassett')
album = Album.find_or_create_by_artist_id_and_genre_id_and_label_id_and_format_id_and_title_and_year_and_photo_file_name_and_photo_remote_url_and_photo_updated_at_and_photo_file_size_and_photo_content_type_and_description(artist.id, genre.id, label.id, format.id,'Ilu',1989,'ra_br_87.jpg','','2012-05-22 12:18:29.641011,38197',123,'image/jpeg','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam at sem urna, vitae convallis nulla. Fusce ut lorem id ante egestas hendrerit. Suspendisse laoreet tellus eu turpis imperdiet vitae elementum nulla mollis. Sed justo orci, egestas id bibendum imperdiet, viverra sed velit. Morbi quis neque a nisl egestas sollicitudin. Nam.')

%w(Sewerside\ brew
  Inner\ Sun 
  Circushead).each do |name|
  Track.find_or_create_by_album_id_and_title_and_artist_id_and_order_number_and_minutes_and_seconds(album.id, name, artist.id, 1, 2, 3)
end

artist = Artist.find_or_create_by_name('Erkki Hyva')
genre = Genre.find_or_create_by_name('Indie')
label = Label.find_or_create_by_name('Õunaviks')
format = Format.find_or_create_by_name('CD')
album = Album.find_or_create_by_artist_id_and_genre_id_and_label_id_and_format_id_and_title_and_year_and_photo_file_name_and_photo_remote_url_and_photo_updated_at_and_photo_file_size_and_photo_content_type_and_description(artist.id, genre.id, label.id, format.id,'Varjust Rambini',2004,'ra_br_87.jpg','','2012-05-22 12:18:29.641011,38197',123,'image/jpeg','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam at sem urna, vitae convallis nulla. Fusce ut lorem id ante egestas hendrerit. Suspendisse laoreet tellus eu turpis imperdiet vitae elementum nulla mollis. Sed justo orci, egestas id bibendum imperdiet, viverra sed velit. Morbi quis neque a nisl egestas sollicitudin. Nam.')

%w(Inimene\ On\ Nagu\ Raamat
  Vaikida\ Ei\ Saa 
  Leegitsev\ Lumi).each do |name|
  Track.find_or_create_by_album_id_and_title_and_artist_id_and_order_number_and_minutes_and_seconds(album.id, name, artist.id, 1, 2, 3)
end

artist = Artist.find_or_create_by_name('Best Coast')
genre = Genre.find_or_create_by_name('Surf Rock')
label = Label.find_or_create_by_name('Witchita')
format = Format.find_or_create_by_name('CD')
album = Album.find_or_create_by_artist_id_and_genre_id_and_label_id_and_format_id_and_title_and_year_and_photo_file_name_and_photo_remote_url_and_photo_updated_at_and_photo_file_size_and_photo_content_type_and_description(artist.id, genre.id, label.id, format.id,'Crazy For You',2010,'ra_br_87.jpg','','2012-05-22 12:18:29.641011,38197',123,'image/jpeg','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam at sem urna, vitae convallis nulla. Fusce ut lorem id ante egestas hendrerit. Suspendisse laoreet tellus eu turpis imperdiet vitae elementum nulla mollis. Sed justo orci, egestas id bibendum imperdiet, viverra sed velit. Morbi quis neque a nisl egestas sollicitudin. Nam.')

%w(Boyfriend
  Crazy\ For\ You 
  The\ End).each do |name|
  Track.find_or_create_by_album_id_and_title_and_artist_id_and_order_number_and_minutes_and_seconds(album.id, name, artist.id, 1, 2, 3)
end