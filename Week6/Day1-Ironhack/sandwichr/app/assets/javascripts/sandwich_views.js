$(function() {

  $('button').on('click', function(e) {
    e.preventDefault();
    var ingredient_id = $(this).attr("class")
    console.log(ingredient_id)
    var sandwich_id = (window.location.href.split('/'))[4]
    console.log(sandwich_id)
    $.ajax({
      type: 'POST',
      url: 'http://localhost:3000/api/sandwiches/'+sandwich_id+'/ingredients/add',
      data: {ingredient: ingredient_id},
      success: function(response){
        console.log("success")
        var ingredient_name = response.name
        var new_ingredient = "<li>" + ingredient_name + "</li>"
        var ingredient_calories = response.calories
        console.log($('.calories').text())
        var sandwich_calories = ingredient_calories + parseInt($('.calories').text())
        $('ul').append(new_ingredient);
        $('span').text(sandwich_calories)

      },

      error: function(){
        console.log("error34")
      }


    })

  })


});// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
