console.log("Hello world!");
//import React from 'react';
$(document).ready(function(){
  $.getJSON('/things')
    .then(function(response){
      response.forEach(function(thing){
        $('#things').append("<h1>" + thing.title + "</h1>")
      })
    })
})
