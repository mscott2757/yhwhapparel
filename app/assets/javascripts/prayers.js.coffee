# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
(($) ->
  reload = (id) ->
    $.ajax({
      type: "PATCH",
      url: "prayers/update",
      data: {id: id},
      dataType: "json",
      success: (result) ->
        obj =
        $("#prayer_" + result.id)
          .find("span")
          .load(document.URL +  " #prayer_" + result.id + " span")
    })

  ready = ->
    $(document).ready =>
      $("button").click ->
        reload $(this).data("id")


  $(document).ready(ready)
  $(document).on('page:load', ready)
) jQuery

