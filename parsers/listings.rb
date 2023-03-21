require './lib/headers'
require './lib/helpers'

vars = page["vars"]
PER_PAGE = 50
json = JSON.parse(content)
current_page = vars["page_number"]


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