
function thor(name){
  console.log('hi' + name);
}

function highOrderFunction(pablo){
  var lorenzo = 'lorenzo';
  pablo(lorenzo);
}


highOrderFunction(thor);
