/*
  $()
  - Select elements:
    Ex: $('.my-class') using CSS selectors
    Ex: $(domElement) using raw DOM elements
      $('.cell').each( function (index, element) {
        // element is not a jQuery object, but a raw DOM element
        var el = $(element) => now 'el' is a jQuery Object
      })
    Return value is a jQuery object
  - Create elements:
    Ex: $('<div>') using '<' '>' characters to create tags
    Return value is a jQuery object

  Methods to add elements to the DOM: .append, .prepend
  Methods to change tag text: .text, .html
  Methods to remove elements: .remove, .empty
  Methods to manage attributes: .attr, .hasClass, .addClass
  Method to iterate: .each( function (index, element) {})
*/
