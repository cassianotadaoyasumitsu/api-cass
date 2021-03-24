json.array! @purchases do |purchase|
  json.extract! purchase, :name, :id
end
