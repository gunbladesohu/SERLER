$ ->
  initialize_clickable_rows()

initialize_clickable_rows = ->
  $(".clickable-row").click ->
      window.document.location = $(this).data("href")
