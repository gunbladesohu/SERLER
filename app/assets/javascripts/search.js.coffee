$ ->
  initialize_datatable()
  initialize_search_form()

initialize_datatable = ->
  $(".dataTable").DataTable({
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

initialize_search_form = ->

  $(
    "#q_c_0_a_0_name option[value='software_engineering_methodologies_name']"
  ).attr(
    "selected", true
  );
  $(
    "#q_c_1_a_0_name option[value='software_engineering_methods_name']"
  ).attr(
    "selected", true
  );

  $('form').on 'click', '.remove_fields', (event) ->
    $(this).closest('.field').remove()
    event.preventDefault()

  $('form').on 'click', '.add_fields', (event) ->
    time = new Date().getTime()
    regexp = new RegExp($(this).data('id'), 'g')
    $(this).before($(this).data('fields').replace(regexp, time))
    event.preventDefault()
