require './lib/headers'

html = Nokogiri::HTML(content)

json_text = html.at_css("#__REDUX_STATE__").text.strip.gsub('%5C', "\\").gsub('\u0022', '"')
json = JSON.parse(json_text)


stores = json["stores"]
stores.each do |store_id, store|
    location = store["data"]["location"]
    seo_meta = store["data"]["seoMeta"]
    rating = store["data"]["rating"]
        
    sections = store["data"]["sections"]
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
                section_id: section_id,
                section: section,
                location: location,
                seo_meta: seo_meta,
                rating: rating,
            }
        }
    end
end

####
=begin
json = JSON.parse(content)


categories = json["data"]["items"].map{|i| i["children"].first}

categories.each do |cat|
    cat_id = cat["id"]
    cat_name = cat["name"]

    slug = cat["slug"]


    subcats = cat["children"]

    if subcats.empty?
        subcats = [nil]
    end

    subcats.each do |subcat|
        subcat_id = nil
        subcat_name = nil

        if subcat
            subcat_id = subcat["id"]
            subcat_name = subcat["name"]

            slug = subcat["slug"]
        end

        url = "https://rurffm9m71.execute-api.ap-southeast-1.amazonaws.com/zdprod/storefront/v2/stores/510/products?collection-id=#{CGI.escape(slug)}&cursor=0&sort=BEST_SELLING"

        pages << {
            page_type: "listings",
            url: url,
            no_url_encode: true,
            http2: true,
            priority: 100,
            headers: ReqHeaders::AllHeaders,
            vars: {
                slug: slug,
                cat_id: cat_id,
                cat_name: cat_name,
                subcat_id: subcat_id,
                subcat_name: subcat_name,
                cursor: 0,
                page_number: 1,
            }
        }
    end
end
=end