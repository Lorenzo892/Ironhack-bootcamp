for (var i = 0; i < 25; i++) {
  var newcell= $('.container')
  newcell.append('<div class="cell blue"></div>');
  // newcell.addId('i')
}

$('.form1').on('submit', function (){

  
})

setInterval(function () {
  num = Math.random(25)
  var cell = $('.container .cell:odd');
  cell.toggleClass('blue red');
}, 2000);
