
$(function (){
  var rows = 10;
  var cols = 10;
  var cells = [];
  function createGrid(root) {
    for(var i = 0; i < cols; i++) {
      for(var j = 0; j < rows; j++) {
        var cell = $('<div>').addClass('cell');
        cells.push(cell);
        var col= i;
        var row = j;
        $('.container').append(cell);
        $(cell).attr('col', i);
        $(cell).attr('row', j);
      }
    }
  };




  createGrid($('.container'));

  $('.cell').on('click', function(e) {
    var clickedElement = $(e.currentTarget);
    clickedElement.toggleClass('active');

    $.ajax({
      type: 'GET',
      url: 'http://pokeapi.co/api/v2/pokemon/23/',
      success: function (response) {
        console.log('in da success');
        var imgTag = $('<img>').attr('src', response.sprites.front_default);
        $('.cell').append(imgTag);
      },
      error: function (err) {
        console.log('in da error');
      }
    })
  })

  });
});
