$(document).ready ->
  $("#new_testcase").on("ajax:success", (e, data, status, xhr) ->
    $("#new_testcase").append xhr.responseText
  ).bind "ajax:error", (e, xhr, status, error) ->
    $("#new_testcase").append "<p>ERROR</p>"