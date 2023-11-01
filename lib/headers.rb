module ReqHeaders

    CategoriesHeaders = {
		"Accept" => "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8",
		"Accept-Encoding" => "gzip, deflate, br",
		"Accept-Language" => "en-US,en;q=0.5",
		"DNT" => "1",
		"Host" => "www.ubereats.com",
		"Upgrade-Insecure-Requests" => "1",
	}


	#cookie = "uev2.id.xp=9cfe3a13-4377-4473-b493-5fd2479c033d; dId=59e8fa4e-8352-4f56-a08a-fa87286667f6; uev2.id.session=1edccf6b-9070-4bca-8ee9-e1b6b79495d3; uev2.ts.session=1697564187204; uev2.diningMode=DELIVERY; marketing_vistor_id=7130eabc-7811-43f2-b30d-14fcef727db1; uev2.gg=true; utm_medium=undefined; fm_conversion_id=undefined; utm_source=undefined; CONSENTMGR=c1:1%7Cc2:1%7Cc3:1%7Cc4:1%7Cc5:1%7Cc6:1%7Cc7:1%7Cc8:1%7Cc9:1%7Cc10:1%7Cc11:1%7Cc12:1%7Cc13:1%7Cc14:1%7Cc15:1%7Cts:1697564188917%7Cconsent:true; _scid=b36d761b-64ad-4163-ae3b-affff1cccd3c; _gid=GA1.2.990780952.1697564189; _gcl_au=1.1.2083968586.1697564189; _fbp=fb.1.1697564189410.731158967; _sctr=1%7C1697562000000; _tt_enable_cookie=1; _ttp=n2r1lC701MNLxqBTQsOf0ID8YTn; jwt-session=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7Il9fand0X3JwY19wcm90ZWN0aW9uX2V4cGlyZXNfYXRfbXMiOjE2OTc2NTE2MjkwNTMsIl9fand0X3JwY19wcm90ZWN0aW9uX3V1aWQiOiI2NjAwY2IyZS1iOTc0LTRiNTAtYjFmYy0zODM1YjZmYzI3YjYiLCJfX2p3dF9ycGNfcHJvdGVjdGlvbl9jcmVhdGVkX2F0X21zIjoxNjk3NTY0MTg3MjI5fSwiaWF0IjoxNjk3NTY0MTg4LCJleHAiOjE2OTc2NTA1ODh9.EgOSxKyjjuBNeNiIF0ZOf_QN_9toDmw6R2EHyfpCa84; utag_main=v_id:018b3eb5e0ec008386e69b1869480506f008206700bd0$_sn:1$_se:5$_ss:0$_st:1697567225938$ses_id:1697564188909%3Bexp-session$_pn:2%3Bexp-session; _userUuid=; mcd_restaurant=Fresh Market - Rohrmoser Nunciatura.; _uetsid=b44cf4706d1311eebc393b797c75ab96; _uetvid=b44d37106d1311ee9aebb9edb991806f; _gat_tealium_0=1; _scid_r=b36d761b-64ad-4163-ae3b-affff1cccd3c; _ga=GA1.1.1626308151.1697564189; _ga_P1RM71MPFP=GS1.1.1697564189.1.1.1697565426.60.0.0"
	cookie = "uev2.id.xp=42062b5c-8781-4d4f-a5ed-f7220bd7bc2f; dId=0b4c2cab-693c-4f5a-b66e-691ccfc22e27; uev2.id.session=1e125af5-8dd6-4981-bfa2-7b3ba5106f3a; uev2.ts.session=1698850793126; uev2.diningMode=DELIVERY; marketing_vistor_id=258ceeb6-d672-4718-ae86-4299329f865b; jwt-session=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7Il9fand0X3JwY19wcm90ZWN0aW9uX2V4cGlyZXNfYXRfbXMiOjE2OTg5MzY5Mjc5NjQsIl9fand0X3JwY19wcm90ZWN0aW9uX3V1aWQiOiJmNGQxYzA5OC1mMWMyLTQ5MmUtODMzZC1kZDhkYzAxMTUwMjIiLCJfX2p3dF9ycGNfcHJvdGVjdGlvbl9jcmVhdGVkX2F0X21zIjoxNjk4ODUwNzkzMTQ4fSwiaWF0IjoxNjk4ODUwNzkzLCJleHAiOjE2OTg5MzcxOTN9.h8kH4I08GmYrK8snErSWF8oPbnOktxp2C2efvhT7E7E; uev2.gg=true; utag_main=v_id:018b8b65fccf000ce496745a3cef0004c005d009007e5$_sn:1$_se:3$_ss:0$_st:1698852623618$ses_id:1698850798800%3Bexp-session$_pn:1%3Bexp-session; _userUuid=; utm_medium=undefined; fm_conversion_id=undefined; utm_source=undefined; CONSENTMGR=c1:1%7Cc2:1%7Cc3:1%7Cc4:1%7Cc5:1%7Cc6:1%7Cc7:1%7Cc8:1%7Cc9:1%7Cc10:1%7Cc11:1%7Cc12:1%7Cc13:1%7Cc14:1%7Cc15:1%7Cts:1698850798828%7Cconsent:true; mcd_restaurant=Fresh Market - Rohrmoser Nunciatura.ð; _scid=6b677db3-3363-4cb7-b8d1-f207fd5a0c7e; _scid_r=6b677db3-3363-4cb7-b8d1-f207fd5a0c7e; _ga_P1RM71MPFP=GS1.1.1698850800.1.1.1698850823.37.0.0; _ga=GA1.1.1686189847.1698850800; _tt_enable_cookie=1; _ttp=4k07SaHsRhSc5MBrN8Pm09mvsz8; _gcl_au=1.1.1740220951.1698850801; _sctr=1%7C1698771600000; uev2.loc=%7B%22address%22%3A%7B%22address1%22%3A%22San%20Jos%C3%A9%22%2C%22address2%22%3A%22Province%22%2C%22aptOrSuite%22%3A%22%22%2C%22eaterFormattedAddress%22%3A%22San%20Jos%C3%A9%20Province%2C%20San%20Jos%C3%A9%2C%20Costa%20Rica%22%2C%22subtitle%22%3A%22Province%22%2C%22title%22%3A%22San%20Jos%C3%A9%22%2C%22uuid%22%3A%22%22%7D%2C%22latitude%22%3A9.9280694%2C%22longitude%22%3A-84.0907246%2C%22reference%22%3A%22ChIJxRUNxULjoI8RgrgRn2pqdOY%22%2C%22referenceType%22%3A%22google_places%22%2C%22type%22%3A%22google_places%22%2C%22addressComponents%22%3A%7B%22city%22%3A%22San%20Jos%C3%A9%22%2C%22countryCode%22%3A%22CR%22%2C%22firstLevelSubdivisionCode%22%3A%22San%20Jos%C3%A9%20Province%22%2C%22postalCode%22%3A%22%22%7D%2C%22categories%22%3A%5B%22locality%22%2C%22political%22%5D%2C%22originType%22%3A%22user_autocomplete%22%2C%22source%22%3A%22manual_auto_complete%22%7D; _uetsid=541910d078c711ee9fa5c16897ac117f; _uetvid=541934c078c711eeb46d6535305e1e2f"
	
	ListingsHeaders = {
		"authority" => "www.ubereats.com",
		"method" => "POST",
		"path" => "/api/getCatalogItemsBySectionV1",
		"scheme" => "https",
		###
		"Accept" => "*/*",
		"Accept-Encoding" => "gzip, deflate, br",
		"Accept-Language" => "en-US,en;q=0.5",
		"Content-Type" => "application/json",
		"Cookie" => cookie,
		#"DNT" => "1",
		#"Host" => "www.ubereats.com",
		#Origin: https://www.ubereats.com
		"User-Agent" => "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36",
		"x-csrf-token" => "x",
		"x-uber-xps" => "%7B%7D",
	}
end