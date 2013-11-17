$ ->
  successCallback = (position) ->
    lat = position.coords.latitude
    lon = position.coords.longitude
    $('#checkin_location_position').val("(#{lat}, #{lon})")

  errorCallback = (error) ->
    err_msg = ''
    switch error.code
      when 1
        err_msg = "位置情報の利用が許可されていません"
      when 2
        err_msg = "デバイスの位置が判定できません"
      when 3
        err_msg = "タイムアウトしました"
      else
        err_msg = "エラーコード #{error.code} が発生しました"
    $('#checkin_location_position').val(err_msg)

  navigator.geolocation.getCurrentPosition(successCallback, errorCallback)

