require './lib/headers'
require './lib/helpers'

vars = page["vars"]
current_page = 1

json = JSON.parse(content)

sections = json["data"][vars["section_id"]].each do |section|
    payload = section["payload"]

    outputs << {
        _id: "#{vars["section_id"]}_#{section["catalogSectionUUID"]}",
        _collection: "sections",
        section_id: vars["section_id"],
        section_name: vars["section"]["title"],
        sub_section_id: section["catalogSectionUUID"]
        sub_section_name: payload["standardItemsPayload"]["title"]["text"],
        products_count: payload["standardItemsPayload"]["catalogItems"].count
    }

    products = payload["standardItemsPayload"]["catalogItems"]
    products.each_with_index do |prod, idx|
        rank = idx+1
        store_id = vars["store_id"]

        prod_id = prod["uuid"].to_s
        prod_name = prod["title"]

        brand = nil
        is_private_label = nil

        cat_id = vars["section_id"]
        cat = vars["section"]["title"]
        subcat = payload["standardItemsPayload"]["title"]["text"]

        customer_price_lc = (prod["price"] / 100.to_f)
        base_price_lc = customer_price_lc

        has_discount = false
        discount_percentage = nil

        prod_pieces = GetFunc::Get_Pieces(prod_name)

        uom = GetFunc::Get_Uom(prod_name)
        size_std = uom[:size]
        size_unit_std = uom[:unit]

        description = prod["itemDescription"]
        img_url = prod["imageUrl"]
        barcode = prod_id
        sku = nil
        #url = "https://www.ubereats.com/store/fresh-market-rohrmoser/mDT4exWeQC-HSjy29Ktlew/9834f87b-159e-402f-874a-3cb6f4ab657b/53d538d0-d582-53d7-affc-49408de43695?mod=quickView&modctx=%257B%2522storeUuid%2522%253A%25229834f87b-159e-402f-874a-3cb6f4ab657b%2522%252C%2522sectionUuid%2522%253A%252253d538d0-d582-53d7-affc-49408de43695%2522%252C%2522subsectionUuid%2522%253A%25226bd6af86-7a56-5e99-8810-42f0231789f0%2522%252C%2522itemUuid%2522%253A%2522ca9fcd05-4b64-5187-a3d3-0cc63502cea8%2522%257D&ps=1&scats=53d538d0-d582-53d7-affc-49408de43695&scatsubs="
        url = "https://www.ubereats.com/store/fresh-market-rohrmoser/mDT4exWeQC-HSjy29Ktlew/9834f87b-159e-402f-874a-3cb6f4ab657b/#{cat_id}/#{prod["subsectionUuid"]}/#{prod_id}?diningMode=DELIVERY&ps=1&scats=#{cat_id}"

        is_available = prod["isAvailable"]

        is_promoted = false
        type_of_promotion = nil
        promo_attributes = nil

        latitude = vars["location"]["latitude"]
        longitude = vars["location"]["longitude"]

        store_reviews = JSON.generate({
            num_total_reviews: "'#{vars["store_rating"]["reviewCount"]}'",
            avg_rating: vars["store_rating"]["ratingValue"],
        })

        item_identifiers = JSON.generate({barcode: "'#{barcode}'"})

        outputs << {
            _collection: "products",
            _id: prod_id,
            competitor_name: "FRESH MARKET",
            competitor_type: "dmart",
            store_name: "FRESH MARKET",
            store_id: store_id,
            country_iso: "CR",
            language: "ENG",
            currency_code_lc: "CRC",
            scraped_at_timestamp: Time.now.strftime('%Y-%m-%d %H:%M:%S'),
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




outputs << {
    _collection: "products",
    _id: prod_id,
    competitor_name: "FRESH MARKET",
    competitor_type: "dmart",
    store_name: "FRESH MARKET",
    store_id: store_id,
    country_iso: "PH",
    language: "ENG",
    currency_code_lc: "PHP",
    scraped_at_timestamp: Time.now.strftime('%Y-%m-%d %H:%M:%S'),
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
    description: description,#?
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
    latitude: nil,
    longitude: nil,
    reviews: nil,
    store_reviews: nil,
    item_attributes: item_attributes,
    item_identifiers: item_identifiers,
    country_of_origin: nil,
    variants: nil,
}









#############
products = json["data"]["items"]


if products.nil? || products.empty?
    raise "empty listings page"
else
    #pagination
    if current_page == 1
        total_items = json["data"]["totalItems"]["value"]

        if total_items > PER_PAGE
            total_pages = (total_items/PER_PAGE.to_f).ceil

            (2..total_pages).each do |pn|
                cursor = PER_PAGE * (pn-1)
                url = page["url"].gsub("cursor=0", "cursor=#{cursor}")

                pages << {
                    page_type: "listings",
                    url: url,
                    no_url_encode: true,
                    http2: true,
                    priority: 90,
                    headers: ReqHeaders::AllHeaders,
                    vars: vars.merge(
                        "cursor" => cursor,
                        "page_number" => pn,
                    )
                }
            end
        end
    end


    products.each_with_index do |prod, idx|
        rank = idx+1

        prod_id = prod["id"]

        store_id = prod["storeId"]

        prod_name = prod["title"]

        brand = nil
        is_private_label = nil

        cat_id = vars["cat_id"]
        cat = vars["cat_name"]
        subcat = vars["subcat_name"]

        
        base_price_lc = prod["price"]
        customer_price_lc = prod["price"]
        if prod["discountedPrice"]
            customer_price_lc = prod["discountedPrice"]
        end

        has_discount = customer_price_lc < base_price_lc
        discount_percentage = GetFunc::Get_Discount(base_price_lc, customer_price_lc)


        prod_size = prod["size"]

        prod_pieces = GetFunc::Get_Pieces(prod_name)
        if prod_pieces == 1
            prod_pieces = GetFunc::Get_Pieces(prod_size)
        end

        uom = GetFunc::Get_Uom(prod_name)
        size_std = uom[:size]
        size_unit_std = uom[:unit]
        if size_std.nil? && size_unit_std.nil?
            uom = GetFunc::Get_Uom(prod_size)
            size_std = uom[:size]
            size_unit_std = uom[:unit]
        end

        description = prod["description"]
        img_url = prod["images"].first

        barcodes = prod["barcode"].split(",").map{|i| i.strip}
        barcode = barcodes.first
        sku = prod["sku"]
        is_available = prod["availableQuantity"] > 0


        is_promoted = false
        type_of_promotion = nil
        promo_attributes = nil

        if has_discount
            is_promoted = true
            type_of_promotion = "badge"
            promo_attributes = JSON.generate({
                "promo_details" => "'Sale'",
            })
        end

        tags = prod["displayTags"].map{|i| "'#{i}'"}.join(", ")
        item_attributes = JSON.generate({
            "tags" => tags,
            #"seller_name" => seller_name,
        })
        
        barcodes = barcodes.map{|i| "'#{i}'"}.join(", ")
        #item_identifiers = JSON.generate({
        #    "barcodes" => barcodes,
        #})
        item_identifiers = nil

        
        slug = prod["slug"]
        #url = "https://rappit.ph/products/#{slug}"
        url = "https://rappit.ph/products/#{slug}?id=#{prod_id}"

        outputs << {
            _collection: "products",
            _id: prod_id,
            competitor_name: "Rappit",
            competitor_type: "dmart",
            store_name: "Rappit",
            store_id: store_id,
            country_iso: "PH",
            language: "ENG",
            currency_code_lc: "PHP",
            scraped_at_timestamp: Time.now.strftime('%Y-%m-%d %H:%M:%S'),
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
            description: description,#?
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
            latitude: nil,
            longitude: nil,
            reviews: nil,
            store_reviews: nil,
            item_attributes: item_attributes,
            item_identifiers: item_identifiers,
            country_of_origin: nil,
            variants: nil,
        }
    end
end