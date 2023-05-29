require './lib/headers'

html = Nokogiri::HTML(content)

store_name = html.at_css("h1").text.strip

#json_text = html.at_css("#__REDUX_STATE__").text.strip.gsub('%5C', "\\").gsub('\u0022', '"')
json_text = html.at_css("#__REACT_QUERY_STATE__").text.strip.gsub('%5C', "\\").gsub('\u0022', '"')
json = JSON.parse(json_text)

#puts json_text#.gsub("=>", ":").gsub("nil", "null")

query = nil
json["queries"].each do |jq|
    jq_check = jq["state"]["data"]["uuid"] rescue nil

    if jq_check
        query = jq
    end
end

store_id = query["state"]["data"]["uuid"]
location = query["state"]["data"]["location"]
seo_meta = query["state"]["data"]["seoMeta"]
store_rating = query["state"]["data"]["rating"]


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
end