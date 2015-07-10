json.array! layovers do |layover|
  json.partial! 'layover', layover: layover
end