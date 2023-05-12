require './lib/headers'

html = Nokogiri::HTML(content)

store_name = html.at_css("h1").text.strip

json_text = html.at_css("#__REDUX_STATE__").text.strip.gsub('%5C', "\\").gsub('\u0022', '"')
json = JSON.parse(json_text)

puts json.to_s.gsub("=>", ":").gsub("nil", "null")