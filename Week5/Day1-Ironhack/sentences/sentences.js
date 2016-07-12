var sentences = [
  'Life is about making an impact, not making an income. --Kevin @Kruse',
  'Whatever the mind of man can conceive and believe, it can achieve. –Napoleon Hill',
  'Strive not to be a success, but rather to be of value. –Albert Einstein',
  'Two roads diverged in a wood, and I—I took the one less traveled by, And that has made all the difference.  –Robert Frost',
  'You miss 100% of the shots you don’t take. –Wayne Gretzky',
  'Life is what happens to you while you’re busy making other plans. –John Lennon'
]

$(document).ready(function() {
  $('.sentence').text(sentences[Math.floor((Math.random() * sentences.length-1))])
});

$('button').on('click', function(){
  $('.sentence').text(sentences[Math.floor((Math.random() * sentences.length-1))])
});

$('form').keypress(function(e) {

  if (e.which == 13) {
    e.preventDefault();
  sentences.push($('.input2').val());
  $('.sentence').text($('.input2').val());

};
})







// $('.btn-pepperonni').on('click', function(){
//   $('.pep').toggle();
//   $('.btn-pepperonni').toggleClass('active');
//   $( '.price li:first-child').toggle();
//
//   if ($( ".btn-pepperonni" ).hasClass( "active" )) {
//     price = price + 1;
//
//   }else{
//     price = price - 1;
//   }
//   $('strong').text(price);
//
// })
