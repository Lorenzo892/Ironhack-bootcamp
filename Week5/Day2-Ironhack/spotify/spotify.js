$(function () {

var artisturl= 'https://api.spotify.com/v1/search?type=artist&query='
var album= "https://api.spotify.com/v1/artists/"
var tracks='https://api.spotify.com/v1/albums/'
var track ='https://api.spotify.com/v1/tracks/'


$('form').on('submit', function(e) {
  e.preventDefault();

  var artist = $('input').val()
  $.ajax({
    type: 'GET',
    url: (artisturl + artist),
    success: function (artists) {
      $('.artist').remove();

      artists.artists.items.forEach(function(artist){
        var listItem = $('<li>').text(artist.name );
        // $('ul.artists').append(listItem);
        var alink = $('<a>').attr('href', artist.id).append(listItem).addClass('artist');

        if (artist.images[1] != undefined) {
          var imgTag = $('<img>').attr('src', artist.images[1].url).addClass('artist');
          $('ul.artists').append(alink);
          $('ul.artists').append(imgTag);
        console.log('in  ')
      }
    })
  },
    error: function (err) {
      console.log('in da error');
    }
  })

});

$(document).on('click', 'a.artist', function(e){
  e.preventDefault();
  var idArtist = $(this).attr('href');
  $('.album-list').remove();
  $.ajax({
    type: 'GET',
    url: (album+idArtist+'/albums'),
    success: function (albums) {
      albums.items.forEach(function(album){
        var listAlbums = $('<li>').text(album.name).addClass('album-list');
        // $('ul.albums').append(listAlbums);
         var ablink = $('<a>').attr('href', album.id).append(listAlbums).addClass('album');
         $('ul.albums').append(ablink);
      });
    },
    error: function (err) {
      console.log('in da error');
    }
});
});

$(document).on('click', 'a.album', function(e){
  e.preventDefault();
  var idAlbum = $(this).attr('href');
  $('.track-list').remove();
  $.ajax({
    type: 'GET',
    url: (tracks+idAlbum+'/tracks'),
    success: function (tracks) {
      tracks.items.forEach(function(track){
        var listracks = $('<li>').text(track.name).addClass('track-list');
        // $('ul.albums').append(listAlbums);
         var tlink = $('<a target=”_blank”>').attr('href', track.preview_url).append(listracks).addClass('track');
         $('ul.tracks').append(tlink);
      });
    },
    error: function (err) {
      console.log('in da error');
    }
});
});

})
