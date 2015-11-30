# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $('#n > li > a').click (event) ->
    event.preventDefault()
    active_tab_selector = $('#n >li.active a').attr('href')
    active_tab = $('#n >li.active')
    active_tab.removeClass 'active'
    $(this).parents('li').addClass 'active'
    $(active_tab_selector).removeClass 'active'
    $(active_tab_selector).addClass 'hide'
    target_tab_selector = $(this).attr('href')
    $(target_tab_selector).removeClass 'hide'
    $(target_tab_selector).addClass 'active'
    return
  
  $('.clickable-row').click ->
    window.location = $(this).data('href')
    return
return