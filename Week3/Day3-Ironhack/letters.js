var words = [
    "dead",         // 1st -> d
    "bygone",       // 2nd -> y
    "landing",      // 3rd -> n
    "cheaply",      // 4th -> a
    "assumed",      // 5th -> m
    "incorrectly",  // 1st -> i
    "attention",    // 2nd -> t
    "agent"         // 3rd -> e
];

function decoder (array) {
  var secretMessage = [];
  var i;
  var letter;
  var trueLetter
  for (i=0; i==5; i++){
    letter= array[i].split("")
    trueLetter= letter[i]
    secretMessage[i] = true_letter
  }
  for (i=5; i== array.lenght; i++) {
  letter= array[i].split("")
  trueLetter= letter[i-5]
  secretMessage[i] = true_letter
}
return secretMessage.toString();
}

console.log(decoder(words));
