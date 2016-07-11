
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
  }


blastOff(10);
