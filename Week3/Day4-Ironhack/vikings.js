
// Game start!!
function blastOff(time){
  var counter =0;

  function start(){
    if (counter<=time){
      console.log(counter);
      counter++;
      setTimeout(start, 1000);
    } else {
      console.log('Fight is ON, RUN for your life')
    }
  }

    start();
    battle();
    printResultBattle();
  }

var viking = function(name, health, strength){
  this.name = name;
  this.health = health;
  this.strength = strength;
}

var saxon = function (){
  this.health = Math.floor((Math.random() * 50)+10);
  this.strength = Math.floor((Math.random() * 10)+1);
}

var viking1= new viking("Viking1", 80, 10);
var viking2= new viking('Viking2', 100, 20);
var viking3= new viking('Viking3', 130, 10);

var saxon1 = new saxon()
var saxon2 = new saxon()
var saxon3 = new saxon()

var vikings_array= [viking1, viking2, viking3];
var saxons_array = [saxon1, saxon2, saxon3];


function battle(){
  var numberFights = Math.floor((Math.random() * 3) + 5);
  var counter = 0;
  fight();
  function fight(){
    if  (counter<=numberFights) {
      console.log("ROUND" + counter);
      console.log("Numero de peleas" + numberFights);
      for (var i=0; i<=2; i++){
        if (vikings_array[i].health > 0){
          var indexSaxon = Math.floor((Math.random() * 2) + 1);
          if (saxons_array[indexSaxon].health > 0) {
            vikings_array[i].health = vikings_array[i].health - saxons_array[indexSaxon].strength
            saxons_array[indexSaxon].health= saxons_array[indexSaxon].health - vikings_array[i].strength
          }
        }
      }
      counter ++;
      fight()
    }
  }
}

function printResultBattle(){
  vikings_array.forEach (function(viking) {
    console.log(viking.name);
    if (viking.health > 0) {
      console.log("Alive!!" + viking.health + " health");
    } else {
      console.log("Dead!!" + viking.health + " health");
    }
  })

  saxons_array.forEach(function(saxon){
    console.log(saxon);
    if (saxon.health > 0) {
      console.log("Alive!!" + saxon.health + " health");
    } else {
      console.log("Dead!!" + saxon.health + " health");
    }
  })


}




blastOff(10);
