$ ->
  initialize_clickable_rows()

initialize_clickable_rows = ->
  $(".clickable-row").each ->
      href = $(this).data("href")
      $(this).find('td').each ->
        $(this).contents().wrapAll(
          "<a class=\"clickable-cell\" href=\"" + href + "\"></a>"
        )
