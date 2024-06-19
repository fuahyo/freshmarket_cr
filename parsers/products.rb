require './lib/headers'
require './lib/helpers'

vars = page["vars"]
current_page = 1

json = JSON.parse(content)

customer_price_lc = json["data"]['price'] / 100.to_f
base_price_lc = vars["base_price_lc"]
has_discount = false
discount_percentage = nil

if prod_name =~ /^(\d+)%/i
    captured_discount = $1

    unless captured_discount.to_f == 0.to_f
        has_discount = true
        discount_percentage = captured_discount
        
        base_price_lc = (customer_price_lc / (1 - (discount_percentage.to_f/100.to_f))).round
        prod_name = prod_name.gsub(/^(\d+)%/i, "").strip.gsub(/^desc/i, "").strip
    end
end
