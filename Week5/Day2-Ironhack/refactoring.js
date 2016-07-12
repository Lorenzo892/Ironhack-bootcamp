	success: function (response) {
        console.log('in da success');
        var results = response.artists.items;
        results.forEach( function(element){
          var ptext = $('<p>').text(element.name);
          var alink = $('<a>').attr('href',album(element.name)).append(ptext);

          if (element.images[1] != undefined) {
            var image = $('<img>').attr('src',element.images[1].url);
          }
          $('.results').append(alink);
          $('.results').append(image);

        })

      },
      error: function (err) {
        console.log('in da error');
      }
    })
