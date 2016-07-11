var decoder = require('./letters2.js')

function wordpicking (sentence, choice, order) {
  var sentenceArray = sentence.split(' ');

  if (order == 'reverse') {
    sentenceArray = sentenceArray.reverse();
  }
  if (choice== 'even') {
    sentenceArray = sentenceArray.filter(function(word, index){
      return index % 2 == 0;
    })
  }
  if (choice== 'odd') {
    sentenceArray = sentenceArray.filter(function(word, index){
      return index % 2 != 0;
    })
  }
return decoder(sentenceArray)
}

// function decoder(array){
//   var index = 0;
//   var secretMessage = '';
//   // for (var i = 0; i < array.length; i++) {
//   //   secretMessage += array[i].charAt(index % 5);
//   //   index++;
//   //   }
//   array.forEach(function(word, indexNew){
//     secretMessage += word[indexNew % 5];
//   })
//     return secretMessage;
// }

var sentence, message;
sentence = "fill the proper tank for the cow"

console.log(wordpicking(sentence, 'even', 'reverse'))


// var words = ["darling", "bygone", "landing", "cheaply", "assumed", "incorrectly", "attention", "agent"];
