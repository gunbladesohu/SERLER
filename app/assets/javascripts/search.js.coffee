//= require jquery
//= require jquery_ujs

$ ->
  initialize_datatable()

initialize_datatable = ->
  $("#search_results").DataTable({
    dom: 'Brtipr',
    stateSave: true,
    buttons: [
      'colvis'
    ],
    "columnDefs": [ {
      "targets": "initially-hidden",
      "visible": false
    } ]
  })
	
