# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$(document).ready ->
  $('#btnAdd').click ->
    # create the new element via clone(), and manipulate it's ID using newNum value
    name = $('#newProp').attr('value')
    #if $('.clonedInput').html() == ""
    newElem = '<span>'+ name + '</span>:<br/>
    <input id="note_' + name + '" name="note[' + name + ']" size="30" type="text" value="' + Math.random() + '" /><br/>'

    # insert the new element after the last "duplicatable" input field
    $('.clonedInput').after(newElem)
    