json.(layover, :id)

json.layover_info do
  json.(layover, :user_id, :airport_code, :city, :start_time, :end_time,:created_at, :updated_at)
end

json.creator do
  json.(layover.user, :user_name, :first_name, :last_name, :email)
end