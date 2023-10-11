require './lib/headers'
require './lib/helpers'

vars = page["vars"]
current_page = 1

json = JSON.parse(content)

sub_categories = json['data']['segmentedControlData']['segmentedControlItems'].filter{|x| x['uuid']}.map{|x| 
    [x['uuid'], x['title']['richTextElements'].first['text']['text']['text']]
}.to_h rescue {}


json["data"]['catalog']&.each do |section|
    payload = section["payload"]
    sub_section_id = section["catalogSectionUUID"]

    outputs << {
        _id: "#{vars["section_id"]}_#{sub_section_id}",
        _collection: "sections",
        section_id: vars["section_id"],
        section_name: vars["section"]["title"],
        sub_section_id: sub_section_id,
        sub_section_name: payload["standardItemsPayload"]["title"]["text"],
        products_count: payload["standardItemsPayload"]["catalogItems"].count
    }

    products = payload["standardItemsPayload"]["catalogItems"]
    products.each_with_index do |prod, idx|
        rank = idx+1
        store_id = vars["store_id"]

        prod_id = prod["uuid"].to_s
        prod_name = prod["title"].strip

        brand = nil
        is_private_label = nil

        cat_id = vars["section_id"]
        cat = vars["section"]["title"]
        subcat = sub_categories[prod["subsectionUuid"]]

        customer_price_lc = (prod["price"] / 100.to_f)
        base_price_lc = customer_price_lc

        has_discount = false
        discount_percentage = nil
        
        if prod_name =~ /^(\d+)%/i
            discount_percentage = $1

            unless discount_percentage.to_f == 0.to_f
                has_discount = true
                base_price_lc = (customer_price_lc / (1 - (discount_percentage.to_f/100.to_f))).round
                prod_name = prod_name.gsub(/^(\d+)%/i, "").strip.gsub(/^desc/i, "").strip
            end
        end

        prod_pieces = GetFunc::Get_Pieces(prod_name)

        uom = GetFunc::Get_Uom(prod_name)
        size_std = uom[:size]
        size_unit_std = uom[:unit]

        description = prod["itemDescription"]
        img_url = prod["imageUrl"]
        barcode = prod_id
        sku = nil

        #url = "https://www.ubereats.com/store/fresh-market-rohrmoser/mDT4exWeQC-HSjy29Ktlew/9834f87b-159e-402f-874a-3cb6f4ab657b/53d538d0-d582-53d7-affc-49408de43695?mod=quickView&modctx=%257B%2522storeUuid%2522%253A%25229834f87b-159e-402f-874a-3cb6f4ab657b%2522%252C%2522sectionUuid%2522%253A%252253d538d0-d582-53d7-affc-49408de43695%2522%252C%2522subsectionUuid%2522%253A%25226bd6af86-7a56-5e99-8810-42f0231789f0%2522%252C%2522itemUuid%2522%253A%2522ca9fcd05-4b64-5187-a3d3-0cc63502cea8%2522%257D&ps=1&scats=53d538d0-d582-53d7-affc-49408de43695&scatsubs="
        #url = "https://www.ubereats.com/cr-en/store/fresh-market-rohrmoser/mDT4exWeQC-HSjy29Ktlew/9834f87b-159e-402f-874a-3cb6f4ab657b/#{cat_id}/#{prod["subsectionUuid"]}/#{prod_id}?diningMode=DELIVERY&ps=1&scats=#{cat_id}"

        #base_url = "https://www.ubereats.com/cr-en/store/fresh-market-rohrmoser/mDT4exWeQC-HSjy29Ktlew/9834f87b-159e-402f-874a-3cb6f4ab657b"
        #slug = '/CAT_ID?mod=quickView&modctx={"storeUuid":"STORE_ID","sectionUuid":"CAT_ID","subsectionUuid":"SUB_SECTION_ID","itemUuid":"PROD_ID"}&ps=1&scats=CAT_ID&scatsubs='
        #slug = slug.gsub("{", "%257B").gsub('"', "%2522").gsub(":", "%253A").gsub(",", "%252C").gsub("}", "%257D")
        #slug = slug.gsub("CAT_ID", cat_id).gsub("STORE_ID", store_id).gsub("SUB_SECTION_ID", sub_section_id).gsub("PROD_ID", prod_id)
        #url = "#{base_url}#{slug}"

        ###
        base_url = "https://www.ubereats.com/cr-en/store/fresh-market-rohrmoser-nunciatura/mDT4exWeQC-HSjy29Ktlew/"
        slug = "#{cat_id}/#{sub_section_id}/#{prod_id}?scats=#{cat_id}"
        url = "#{base_url}#{slug}"
        ###
        
        is_available = prod["isAvailable"]

        is_promoted = false
        type_of_promotion = nil
        promo_attributes = nil

        latitude = vars["location"]["latitude"]
        longitude = vars["location"]["longitude"]

        store_reviews = JSON.generate({
            num_total_reviews: vars["store_rating"]["reviewCount"],
            avg_rating: vars["store_rating"]["ratingValue"],
        })

        item_identifiers = JSON.generate({barcode: "'#{barcode}'"})

        outputs << {
            _collection: "products",
            _id: prod_id,
            competitor_name: "FRESH MARKET",
            competitor_type: "dmart",
            store_name: vars["store_name"],
            store_id: store_id,
            country_iso: "CR",
            language: "SPA",
            currency_code_lc: "CRC",
            scraped_at_timestamp: ((ENV['needs_reparse'] == 1 || ENV['needs_reparse'] == "1") ? (Time.parse(page['fetched_at']) + 1).strftime('%Y-%m-%d %H:%M:%S') : Time.parse(page['fetched_at']).strftime('%Y-%m-%d %H:%M:%S')),
            ###
            competitor_product_id: prod_id,
            name: prod_name,
            brand: brand,
            category_id: cat_id,
            category: cat,
            sub_category: subcat,
            customer_price_lc: customer_price_lc,
            base_price_lc: base_price_lc,
            has_discount: has_discount,
            discount_percentage: discount_percentage,
            rank_in_listing: rank,
            page_number: current_page,
            product_pieces: prod_pieces,
            size_std: size_std,
            size_unit_std: size_unit_std,
            description: description,
            img_url: img_url,
            barcode: barcode,
            sku: sku,
            url: url,
            is_available: is_available,
            crawled_source: "WEB",
            is_promoted: is_promoted,
            type_of_promotion: type_of_promotion,
            promo_attributes: promo_attributes,
            is_private_label: is_private_label,
            latitude: latitude,
            longitude: longitude,
            reviews: nil,
            store_reviews: store_reviews,
            item_attributes: nil,
            item_identifiers: item_identifiers,
            country_of_origin: nil,
            variants: nil,
        }
    end
end
