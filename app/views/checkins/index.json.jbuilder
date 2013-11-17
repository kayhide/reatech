json.array!(@checkins) do |checkin|
  json.extract! checkin, :user_id, :location_id, :checked_out_at, :message
  json.url checkin_url(checkin, format: :json)
end
