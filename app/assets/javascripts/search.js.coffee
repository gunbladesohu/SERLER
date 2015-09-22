$ ->
  initialize_datatable()

initialize_datatable = ->
  $("#search_results").DataTable({
    dom: 'Brtipr',
    buttons: [
      'colvis'
    ]
  })
