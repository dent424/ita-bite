$ ->
  $(".hide_items").live "click", ->
    $(this).closest("tr").next().toggleClass "hidden"

