pry = require('pryjs')


function caesarCipher (message, shift) {
  var arrayMessage = message.split('');
  var newArrayMessage= arrayMessage.map(function(letter){
    if (letter.charCodeAt()>64 && letter.charCodeAt()<91) {
      if (letter.charCodeAt() + shift <64) {
        return String.fromCharCode(91 - (64-letter.charCodeAt() + shift));
      }
      else if ((letter.charCodeAt() + shift) > 91) {
        return String.fromCharCode(64 + (letter.charCodeAt() + shift-91));
      }
      else {
        return String.fromCharCode(letter.charCodeAt() + shift);
      }
    }
      else if (letter.charCodeAt()>97 && letter.charCodeAt()<123) {
        if ((letter.charCodeAt() + shift) <9) {
          return String.fromCharCode(123 - (97-letter.charCodeAt() + shift));
        }
        else if ((letter.charCodeAt() + shift) >123) {
          return String.fromCharCode(95 + (letter.charCodeAt() + shift-123));
        }
        else {
          return String.fromCharCode(letter.charCodeAt() + shift);
        }
      }
     else {
      return letter
    }
  })

  return newArrayMessage.join('');
  // [...]
}

var encrypted = "Et tu, brute?";

console.log(caesarCipher (encrypted, 6));
//=> "_orqrp"
