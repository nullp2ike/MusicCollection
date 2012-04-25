# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  $('#album_genre_name').autocomplete
    source: $('#album_genre_name').data('autocomplete-source')
  $('#album_format_name').autocomplete
    source: $('#album_format_name').data('autocomplete-source')
  $('#album_artist_name').autocomplete
    source: $('#album_artist_name').data('autocomplete-source')
  $('#album_label_name').autocomplete
    source: $('#album_label_name').data('autocomplete-source')
