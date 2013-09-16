$(document).ready ->
  $("#new_scenario").on("ajax:success", (e, data, status, xhr) ->
    $("#new_scenario").append xhr.responseText
  ).bind "ajax:error", (e, xhr, status, error) ->
    $("#new_scenario").append "<p>ERROR</p>"