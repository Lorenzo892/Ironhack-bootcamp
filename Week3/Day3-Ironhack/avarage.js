var numbers = '80:70:90:100'

function average(string) {
  // var sum=0;
  var array_numbers = string.split(':');

array_numbers.reduce(function(sum, num) {
  sum += parseInt(number1)
})


  // array_numbers.forEach(function(number1) {
  //   sum = sum + parseInt(number1)
  // })
return (sum/array_numbers.length);
}
console.log (average(numbers))
