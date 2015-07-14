json.(layover, :id)

json.layover_info do
  json.arrival_time layover.arrival_time
  json.departure_time layover.dept_time
  json.city layover.city
  json.airport layover.short_name
  json.display_user_info layover.display
  json.created_at layover.created_at
  json.updated_at layover.updated_at
end

json.creator do
  json.(layover.user, :user_name, :first_name, :last_name, :email)
end