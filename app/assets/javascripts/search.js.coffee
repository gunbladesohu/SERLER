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

  # TODO/hack:
  # we must allow the id field to be searchable/ransackable in order
  #   to search for it in URLs (e.g. to re-call a saved search result)
  # BUT we cannot tell the form helper to not display this field,
  #   so we hide it after displaying it…
  # see also app/models/evidence_item.rb
  $("form[id$='_search'] optgroup option[value='id']").remove()

  $('form').on 'click', '.remove_fields', (event) ->
    $(this).closest('.field').remove()
    event.preventDefault()

  $('form').on 'click', '.add_fields', (event) ->
    time = new Date().getTime()
    regexp = new RegExp($(this).data('id'), 'g')
    $(this).before($(this).data('fields').replace(regexp, time))
    event.preventDefault()
