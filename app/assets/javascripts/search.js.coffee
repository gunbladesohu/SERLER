$ ->
  initialize_datatable()
  initialize_search_form()
  modify_search_field()
  select_dropbox_item()
  return


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
  return


initialize_search_form = ->
  $(
    "select:hidden option[value='software_engineering_methodologies_name']"
  ).attr(
    "selected", true
  );
  $(
    "select:hidden option[value='software_engineering_methods_name']"
  ).attr(
    "selected", true
  );
  $(".remove_fields").hide();
  return



modify_search_field = ->
  $("form[id$='_search'] optgroup option[value='id']").remove()
    
  # hide database related item
  $("[id$='_name'] option[value$='_at']").hide()

  # hide unecessary calculator
  $("[id$='_p'] option[value*='match']").hide()
  $("[id$='_p'] option[value*='lt']").hide()
  $("[id$='_p'] option[value*='gt']").hide()
  $("[id$='_p'] option[value*='in']").hide()
  $("[id$='_p'] option[value*='true']").hide()
  $("[id$='_p'] option[value*='false']").hide()
  $("[id$='_p'] option[value*='null']").hide();
  return


  # TODO/hack:
  # we must allow the id field to be searchable/ransackable in order
  #   to search for it in URLs (e.g. to re-call a saved search result)
  # BUT we cannot tell the form helper to not display this field,
  #   so we hide it after displaying it…
  # see also app/models/evidence_item.rb
select_dropbox_item = ->

  $('form').on 'click', '.remove_fields', (event) ->
    $(this).closest('.field').remove()
    event.preventDefault()


  $('form').on 'click', '.add_fields', (event) ->
    time = new Date().getTime()
    regexp = new RegExp($(this).data('id'), 'g')
    $(this).before($(this).data('fields').replace(regexp, time))
    modify_search_field()
    event.preventDefault()
  
  return

  
