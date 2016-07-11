var read = require('read');
pry = require('pryjs')

var counter = 0;
var u = 0;


var question = function(question, answer,points){
                  this.question=question;
                  this.answer = answer;
                  this.id = calculateId();
                  this.points = points;
                }

  function calculateId(){
    return counter ++;
  }

  var question1 = new question('what\'s your name?', 'Lorenzo',5);
  var question2 = new question('how many players are in a rugby field?', 15,10);
  var question3 = new question('Capital of the EU?', 'Brussels',12);
  var question4 = new question('When did Barcelona host the Olympic games?', 1992,15);

  var arrayQuestions = [question1, question2, question3, question4]

  var quiz = function(name){
                    this.name=name;
                    this.points= 0;
                  }

  var lorenzo = new quiz('Lorenzo')
  // var options = {
  //           prompt: question1.question,
  //           // silent: true
  //           }


function user(activeUser){
var activeUser = activeUser;
startGame();

  function startGame(){
    if (u < arrayQuestions.length){
    var options = {prompt: arrayQuestions[u].question}
    read(options, displayName)
      function displayName (err, name){
       if (name == arrayQuestions[u].answer) {
         console.log("CORRECT!!!");
         activeUser.points= activeUser.points + arrayQuestions[u].points;

       } else {
        return startGame();
       }
       u++;
      return startGame();
      }
    }
console.log( 'total points  ' + activeUser.points);
   }

 }


  // function displayName (err, name){
  //   if (name == question1.answer) {
  //     console.log("CORRECT!!!")
  //     console.log("Your name is: " + name)
  //   } else {
  //       read(options, displayName)
  //   }
  // }

user(lorenzo);
  // read(options, displayName)
