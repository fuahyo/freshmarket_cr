require './lib/headers'

html = Nokogiri::HTML(content)

store_name = html.at_css("h1").text.strip

#json_text = html.at_css("#__REDUX_STATE__").text.strip.gsub('%5C', "\\").gsub('\u0022', '"')
json_text = html.at_css("#__REACT_QUERY_STATE__").text.strip.gsub('%5C', "\\").gsub('\u0022', '"')
json = JSON.parse(json_text)

query = nil
#to get the correct json that have store details
json["queries"].each do |jq|
    jq_check = jq["state"]["data"]["uuid"] rescue nil

    if jq_check
        query = jq
        break
    end
end

#to get notified if there are errors on the json
if query.nil?
    raise "nil query"
end

#puts query.to_s.gsub("=>", ":").gsub("nil", "null")

store_id = query["state"]["data"]["uuid"]
location = query["state"]["data"]["location"]
seo_meta = query["state"]["data"]["seoMeta"]
store_rating = query["state"]["data"]["rating"]

puts store_id
puts location
puts seo_meta
puts store_rating
puts ###

sections = query["state"]["data"]["sections"]

sections.each do |section|
    section_name = section["title"]
    section_id = section["uuid"]

    body = {
        "diningMode" => "DELIVERY",
        "sectionUUIDs" => [section_id],
        "storeUUIDs" => [store_id],
    }.to_json

    url = "https://www.ubereats.com/api/getCatalogItemsBySectionV1"
    
    puts body
=begin
    pages << {
        page_type: "listings",
        url: url,
        method: "POST",
        headers: ReqHeaders::ListingsHeaders,
        body: body,
        driver: {
            name: "store_id=#{store_id}&section_id=#{section_id}&section_name=#{section_name}",
        },
        vars: {
            store_id: store_id,
            store_name: store_name,
            section_id: section_id,
            section: section,
            location: location,
            seo_meta: seo_meta,
            store_rating: store_rating,
        }
    }
=end
end