$ ->
  $(".gmap").each ->
    lat = $(@).attr("data-lat")
    lng = $(@).attr("data-lng")
    title = $(@).attr("data-title")
    map = new GMaps(
      div: @
      zoom: 12
      lat: lat
      lng: lng
      disableDefaultUI: true
    ).addMarker(
      lat: lat
      lng: lng
      title: title
    )

