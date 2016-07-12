$(function () {
  $.ajax({
    type: 'GET',
    url: 'http://ironhack-characters.herokuapp.com/characters',
    success: function (response) {
      console.log('in da success');
      console.log(name);
      $('.container').append(name);
    },
    error: function (err) {
      console.log('in da error');
    }
  })

  $('.js-submit').on('click', function(e){
    e.preventDefault();

    var newCharacter = {
      name: $('.name').val(),
      occupation: $('.occupation').val(),
      weapon: $('.weapon').val()
    }

  $.ajax({
    type: 'POST',
    url: 'http://ironhack-characters.herokuapp.com/characters',
    data: newCharacter,
    success: function (response){
      $.ajax({
        type: 'GET',
        url: 'http://ironhack-characters.herokuapp.com/characters',
        success: function (characters) {
          characters.forEach(function(character){
            var listItem = $('<li>').text(character.name + ' is a '+character.occupation+ ' with special pòwer '+ character.weapon);
            $('ul.characters').append(listItem);
        })
      },
        error: function (err) {
          console.log('in da error');
        }
      })
      },
    error: function () {
      console.log('in da error');
    },
    datatype: "json"

  })

  })

  })
