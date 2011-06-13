# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$(document).ready ->
  #$('#btnDel').attr('disabled', 'true');
  
  $('#btnAdd').click ->
    num     = $('.clonedInput').length  # how many "duplicatable" input fields we currently have
    newNum  = new Number(num + 1)       # the numeric ID of the new input field being added
    
    # enable the "remove" button
    $('#btnDel').attr('disabled', 'false')
    
    # business rule: you can only add 5 names
    if (newNum >= 5)
      $('#btnAdd').attr('disabled', 'true')

    # create the new element via clone(), and manipulate it's ID using newNum value
    newElem = $('#input' + num).clone().attr('id', 'input' + newNum)
    
    # manipulate the name/id values of the input inside the new element
    newElem.children(':first').html("Name: " + newNum)
    newElem.children(':last').attr( {
        value: Math.random(),
        id: 'note_name' + newNum,
        name: 'note[name' + newNum + ']',
        }
    )
    
    # insert the new element after the last "duplicatable" input field
    $('#input' + num).after(newElem)
    