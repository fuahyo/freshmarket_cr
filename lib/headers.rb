module ReqHeaders

    CategoriesHeaders = {
		"Accept" => "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8",
		"Accept-Encoding" => "gzip, deflate, br",
		"Accept-Language" => "en-US,en;q=0.5",
		"DNT" => "1",
		"Host" => "www.ubereats.com",
		"Upgrade-Insecure-Requests" => "1",
	}


	#cookie = "uev2.id.xp=91689600-ea61-42d0-b043-7448a0c21b46; dId=289e1997-9785-4b99-92b4-162bf0e58977; uev2.id.session=f897e291-68ae-4443-9678-82bc07e4ac36; uev2.ts.session=1699455031084; uev2.diningMode=DELIVERY; marketing_vistor_id=da029934-6aa7-473e-95cb-7d5c331e498f; uev2.gg=true; utag_main__sn=1; utag_main_ses_id=1699455032115%3Bexp-session; utm_medium=undefined; fm_conversion_id=undefined; utm_source=undefined; CONSENTMGR=c1:1%7Cc2:1%7Cc3:1%7Cc4:1%7Cc5:1%7Cc6:1%7Cc7:1%7Cc8:1%7Cc9:1%7Cc10:1%7Cc11:1%7Cc12:1%7Cc13:1%7Cc14:1%7Cc15:1%7Cts:1699455032124%7Cconsent:true; utag_main__ss=0%3Bexp-session; mcd_restaurant=Fresh Market - Rohrmoser Nunciatura.🛒; jwt-session=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7Il9fand0X3JwY19wcm90ZWN0aW9uX2V4cGlyZXNfYXRfbXMiOjE2OTk1NDEyOTYyMTIsIl9fand0X3JwY19wcm90ZWN0aW9uX3V1aWQiOiJmZDM2NjJiMi05YmQ5LTQ5YjAtYTliYi02OTc5YTFkZDFiN2IiLCJfX2p3dF9ycGNfcHJvdGVjdGlvbl9jcmVhdGVkX2F0X21zIjoxNjk5NDU1MDMxMTA1fSwiaWF0IjoxNjk5NDU1MDMxLCJleHAiOjE2OTk1NDE0MzF9.-pYBRU8CEt-SmonIezw0Sb0KLYxKCeUSN0FdKRDnIZo; utag_main__pn=2%3Bexp-session; _userUuid=; utag_main__se=5%3Bexp-session; utag_main__st=1699456855031%3Bexp-session"
	#cookie = "uev2.id.xp=d93df658-ea32-4c82-9789-6dce6bf0f951; dId=9815bc46-36e1-4330-90cf-2ffdd56cfd1f; uev2.id.session=671c6444-3368-4e9b-9dbe-06430cb9c98e; uev2.ts.session=1702559331225; uev2.diningMode=DELIVERY; marketing_vistor_id=681b141b-dec4-4d42-a7a0-3118a389b258; jwt-session=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7Il9fand0X3JwY19wcm90ZWN0aW9uX2V4cGlyZXNfYXRfbXMiOjE3MDI2NDU0NjkwMjMsIl9fand0X3JwY19wcm90ZWN0aW9uX3V1aWQiOiJmZmFhZjViOS00NzFiLTQ4ZWEtYjlhMi1lYWMxOWJkN2RkZWEiLCJfX2p3dF9ycGNfcHJvdGVjdGlvbl9jcmVhdGVkX2F0X21zIjoxNzAyNTU5MzMxMjQyfSwiaWF0IjoxNzAyNTU5MzMxLCJleHAiOjE3MDI2NDU3MzF9.xcwsb7bgKqkI5KPKL8uEwyBgdXUTH8X8CshzlbZjdmA; uev2.gg=true; utag_main__sn=1; utag_main__se=2%3Bexp-session; utag_main__ss=0%3Bexp-session; utag_main__st=1702561138047%3Bexp-session; utag_main_ses_id=1702559336867%3Bexp-session; utag_main__pn=1%3Bexp-session; _userUuid=; utm_medium=undefined; fm_conversion_id=undefined; utm_source=undefined; CONSENTMGR=c1:1%7Cc2:1%7Cc3:1%7Cc4:1%7Cc5:1%7Cc6:1%7Cc7:1%7Cc8:1%7Cc9:1%7Cc10:1%7Cc11:1%7Cc12:1%7Cc13:1%7Cc14:1%7Cc15:1%7Cts:1702559336894%7Cconsent:true; _scid=0e5d0ffc-98f3-4fda-9f61-4b3409e47abd; _scid_r=0e5d0ffc-98f3-4fda-9f61-4b3409e47abd; mcd_restaurant=Fresh Market - Rohrmoser Nunciatura.ð; _ga_P1RM71MPFP=GS1.1.1702559338.1.0.1702559338.60.0.0; _ga=GA1.1.1899400230.1702559339; _yjsu_yjad=1702559339.18ee91d7-85bf-400f-ba7c-2eeec2460474; _sctr=1%7C1702486800000; _gcl_au=1.1.1063150551.1702559339; _tt_enable_cookie=1; _ttp=3b-jkmSGClwNLf-tcw-2ED6yBoh; _uetsid=f1cef5409a8111ee934f89dadec9167c; _uetvid=f1cef4709a8111ee8a52c9abe4230672"
	cookie = "marketing_vistor_id=9dad5be9-ac77-4a6d-9f8d-b3e9c359dc2d; uev2.id.xp=ca443a14-0801-4605-b541-53b1ae6bfbbf; dId=91312865-f5be-4c2d-b5d6-f4251531fb4e; uev2.id.session=c28a9616-2fed-4b59-b8b2-d38f4950488d; uev2.ts.session=1704365447173; uev2.diningMode=DELIVERY; jwt-session=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE3MDQzNjU0NDcsImV4cCI6MTcwNDQ1MTg0N30.wiKX9gkJZ0uXnH3AD9OB9Tt0tiRk46HvzNVyrxhoJJE; uev2.gg=true; utag_main__sn=1; utag_main__se=2%3Bexp-session; utag_main__ss=0%3Bexp-session; utag_main__st=1704367253658%3Bexp-session; utag_main_ses_id=1704365451635%3Bexp-session; utag_main__pn=1%3Bexp-session; _userUuid=; utm_medium=undefined; fm_conversion_id=undefined; utm_source=undefined; CONSENTMGR=c1:1%7Cc2:1%7Cc3:1%7Cc4:1%7Cc5:1%7Cc6:1%7Cc7:1%7Cc8:1%7Cc9:1%7Cc10:1%7Cc11:1%7Cc12:1%7Cc13:1%7Cc14:1%7Cc15:1%7Cts:1704365451652%7Cconsent:true; _scid=6793a3c0-39f6-41d8-9a95-d0d1dc28b12c; _scid_r=6793a3c0-39f6-41d8-9a95-d0d1dc28b12c; mcd_restaurant=Fresh Market - Rohrmoser Nunciatura.ð; _yjsu_yjad=1704365454.2aa1441a-784e-4e29-9b44-a47784fe8560; _uetsid=223dac60aaef11eeb59991919470b7ce; _uetvid=223d99a0aaef11eebc9ed3dd41d6782f; _sctr=1%7C1704301200000; _ga_P1RM71MPFP=GS1.1.1704365454.1.0.1704365454.60.0.0; _ga=GA1.1.560451994.1704365454; _tt_enable_cookie=1; _ttp=j4CK8W5e1WXBZK3AFjAOvj6g6-l; _gcl_au=1.1.911628197.1704365455"
	
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
	ProductsHeaders = {
		"authority" => "www.ubereats.com",
		"method" => "POST",
		"path" => "/api/getCatalogItemsBySectionV1",
		"scheme" => "https",
		"Accept" => "*/*",
		"Accept-Encoding" => "gzip, deflate, br, zstd",
		"Accept-Language" => "en-US,en;q=0.5",
		"Content-Type" => "application/json",
		"Cookie" => "uev2.id.xp=9bf25384-7ee4-4370-a9b3-01669c637b83; dId=251def8d-22ce-4c48-a5e8-15d9e5cd78a8; marketing_vistor_id=52d4a4d2-2f7b-41f6-b729-a96fbf2b0701; jwt-session=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE3MTg3MjQ4NzIsImV4cCI6MTcxODgxMTI3Mn0.eJJImxysuk0w12Sb1PicCrKIWGFAJZAnEjXcITLggHw; _gid=GA1.2.78136512.1718724875; _scid=b3cb06ae-77b3-4029-9b8d-96e7ebc999b4; _sctr=1%7C1718643600000; _ua={'session_id':'a3a77526-a91d-4f83-831b-0cd17d1e6302','session_time_ms':1718797377202}; uev2.loc=%7B%22address%22%3A%7B%22address1%22%3A%22San%20Jos%C3%A9%22%2C%22address2%22%3A%22Province%22%2C%22aptOrSuite%22%3A%22%22%2C%22eaterFormattedAddress%22%3A%22San%20Jos%C3%A9%20Province%2C%20San%20Jos%C3%A9%2C%20Costa%20Rica%22%2C%22subtitle%22%3A%22Province%22%2C%22title%22%3A%22San%20Jos%C3%A9%22%2C%22uuid%22%3A%22%22%7D%2C%22latitude%22%3A9.9280694%2C%22longitude%22%3A-84.0907246%2C%22reference%22%3A%22ChIJxRUNxULjoI8RgrgRn2pqdOY%22%2C%22referenceType%22%3A%22google_places%22%2C%22type%22%3A%22google_places%22%2C%22addressComponents%22%3A%7B%22city%22%3A%22San%20Jos%C3%A9%22%2C%22countryCode%22%3A%22CR%22%2C%22firstLevelSubdivisionCode%22%3A%22San%20Jos%C3%A9%20Province%22%2C%22postalCode%22%3A%22%22%7D%2C%22categories%22%3A%5B%22locality%22%2C%22political%22%5D%2C%22originType%22%3A%22user_autocomplete%22%2C%22source%22%3A%22manual_auto_complete%22%2C%22userState%22%3A%22Unknown%22%7D; uev2.id.session=cacbba32-a738-4df8-8b3f-3112a5d79b79; uev2.ts.session=1718800352151; utag_main__sn=7; utag_main_ses_id=1718804202516%3Bexp-session; utag_main__ss=0%3Bexp-session; ",
		"Origin" => "https://www.ubereats.com",
		"Referer" => "https://www.ubereats.com/cr-en/store/fresh-market-rohrmoser-nunciatura/mDT4exWeQC-HSjy29Ktlew",
		"Use" => "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0",
		"User-Agent" => "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36",
		"X-Csrf-Token" => "x",
		"X-Uber-Client-Gitref" => "c6606bef8287b11227c4947885736e488a6f0c4d",
	}
end
