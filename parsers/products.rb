require './lib/headers'
require './lib/helpers'

vars = page["vars"]
current_page = 1

json = JSON.parse(content)

customer_price_lc = json["data"]['price'].to_f / 100.to_f
base_price_lc = vars["base_price_lc"]

discount_percentage = nil

if customer_price_lc > base_price_lc
    customer_price_lc = base_price_lc
end
has_discount = customer_price_lc != base_price_lc

discount_percentage = has_discount ? ((base_price_lc.to_f - customer_price_lc.to_f)/(base_price_lc.to_f) * 100).to_f.round(7) : nil


output = vars.merge({
    "customer_price_lc" => customer_price_lc,
    "has_discount" => has_discount,
    "discount_percentage" => discount_percentage,
})

outputs << output

# File.open("qweqwe.json","w") do |f|
#     f.write(JSON.pretty_generate(outputs))
# end
# File.open("json.json","w") do |f|
#     f.write(JSON.pretty_generate(json))
# end