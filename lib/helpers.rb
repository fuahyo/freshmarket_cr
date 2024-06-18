module GetFunc
    class << self
        def Get_Uom(x)
        	uom_regex = [
                # /(?<![^\s\-x])(\d*[\.,]?\d+)\s?(inch)(?![^\s])/i,
                # /(?<![^\s\-x])(\d*[\.,]?\d+)\s?(litre[s]?)(?![^\s])/i,
                # /(?<![^\s\-x])(\d*[\.,]?\d+)\s?(libra[s]?)(?![^\s])/i,
                # /(?<![^\s\-x])(\d*[\.,]?\d+)\s?(fl oz)(?![^\s])/i,
                # /(?<![^\s\-x])(\d*[\.,]?\d+)\s?([mcfd]?l)(?![^\s])/i,
                # /(?<![^\s\-x])(\d*[\.,]?\d+)\s?([mk]?g)(?![^\s])/i,
                # /(?<![^\s\-x])(\d*[\.,]?\d+)\s?([mc]?m)(?![^\s])/i,
                # /(?<![^\s\-x])(\d*[\.,]?\d+)\s?([c]?c)(?![^\s])/i,
                # /(?<![^\s\-x])(\d*[\.,]?\d+)\s?(fo)(?![^\s])/i,
                # /(?<![^\s\-x])(\d*[\.,]?\d+)\s?(gr)(?![^\s])/i,
                # /(?<![^\s\-x])(\d*[\.,]?\d+)\s?(lb[s]?)(?![^\s])/i,
                # /(?<![^\s\-x])(\d*[\.,]?\d+)\s?(oz)(?![^\s])/i,

                /(?:\(|\s|^)(\d*[\.,]?\d+)\s?(inch)(?:\)|\s|$)/i,
                /(?:\(|\s|^)(\d*[\.,]?\d+)\s?(litre[s]?)(?:\)|\s|$)/i,
                /(?:\(|\s|^)(\d*[\.,]?\d+)\s?(libra[s]?)(?:\)|\s|$)/i,
                /(?:\(|\s|^)(\d*[\.,]?\d+)\s?(fl oz)(?:\)|\s|$)/i,
                /(?:\(|\s|^)(\d*[\.,]?\d+)\s?([mcfd]?l)(?:\)|\s|$)/i,
                /(?:\(|\s|^)(\d*[\.,]?\d+)\s?([mk]?g)(?:\)|\s|$)/i,
                /(?:\(|\s|^)(\d*[\.,]?\d+)\s?([mc]?m)(?:\)|\s|$)/i,
                /(?:\(|\s|^)(\d*[\.,]?\d+)\s?([c]?c)(?:\)|\s|$)/i,
                /(?:\(|\s|^)(\d*[\.,]?\d+)\s?(fo)(?:\)|\s|$)/i,
                /(?:\(|\s|^)(\d*[\.,]?\d+)\s?(gr)(?:\)|\s|$)/i,
                /(?:\(|\s|^)(\d*[\.,]?\d+)\s?(lb[s]?)(?:\)|\s|$)/i,
                /(?:\(|\s|^)(\d*[\.,]?\d+)\s?(oz)(?:\)|\s|$)/i,
            ].find {|ur| x =~ ur}

            size = $1
            unit = $2

            uom = {
        		size: (size.gsub(",", ".") rescue nil),
        		unit: (unit.capitalize rescue nil),
        	}

        	return uom
        end


        def Get_Pieces(x)
        	product_pieces_regex = [
                /(\d+)\s?(unids?|u|unid)/i,  # additional
                /(\d+)\s?x\s?\d+/i,          # additional
                /(\d+)\s?ud[s]?/i,
                #
                /(\d+)\s?per\s?pack/i,
                /(\d+)\s?pack/i,
                /(\d+)\s?pc[s]?/i,
                /(\d+)\s?pkt[s]?/i,
                /(?<![^\s])(\d+)\s?x\s?\d+/i,
                /[a-zA-Z]\sx\s(\d+)(?![^\s])/i,
                # /(\d+)'?\s?s(?![^\s])/i,
            ].find {|ppr| x =~ ppr}
            product_pieces = product_pieces_regex ? $1.to_i : 1
            product_pieces = 1 if product_pieces == 0
            product_pieces ||= 1

            return product_pieces
        end


        def Get_Discount(x, y)
            discount = nil

            if x != y
                prices = [x, y]
                base_price = prices.max
                customer_price = prices.min

                discount = (((base_price - customer_price) / base_price.to_f) * 100).round(7)
            end

        	return discount
        end
    end
end