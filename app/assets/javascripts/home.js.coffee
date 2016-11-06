ready = ->

  $('a#signIn').click ->
    $('form.sign-in').show("slide", { direction: "left" }, 1000)
    $('a#signIn').addClass('active')
    $('form.sign-up').hide("slide", { direction: "right" }, 1000)
    $('a#signUp').removeClass('active')

  $('a#signUp').click ->
    $('form.sign-up').show("slide", { direction: "right" }, 1000)
    $('a#signUp').addClass('active')
    $('form.sign-in').hide("slide", { direction: "left" }, 1000)
    $('a#signIn').removeClass('active')

$(document).ready(ready)
$(document).on('page:load', ready)
