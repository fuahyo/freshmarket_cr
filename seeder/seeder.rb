require './lib/headers'

pages << {
    page_type: "categories",
    #url: "https://www.ubereats.com/cr-en/store/fresh-market-rohrmoser/mDT4exWeQC-HSjy29Ktlew?diningMode=DELIVERY&ps=1",
    url: "https://www.ubereats.com/cr-en/store/fresh-market-rohrmoser-nunciatura/mDT4exWeQC-HSjy29Ktlew",
    http2: true,
    headers: ReqHeaders::CategoriesHeaders,
}