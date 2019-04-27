# Based on: https://brandonhilkert.com/blog/organizing-javascript-in-rails-application-with-turbolinks/
window.App ||= {}

App.init = ->
  #  Navbar - highlight active menu item with bootstrap
  $('.navbar-nav .nav-link').removeClass('active').find('span.sr-only').remove()
  srSpan = $('<span/>').addClass('sr-only').text('(current)')
  $('.navbar-nav a[href="' + location.pathname + '"].nav-link').addClass('active').append(srSpan)

$(document).on "turbolinks:load", ->
  App.init()