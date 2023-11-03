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
	cookie = "uev2.id.xp=800c33ed-9e22-4de7-8895-3a57addc33d5; dId=2845706b-0cf0-41f2-b2a5-f882d247fcfa; uev2.id.session=b223fb3f-2c4a-4190-9aba-d0170cab6e5d; uev2.ts.session=1699019616673; uev2.diningMode=DELIVERY; marketing_vistor_id=dbeea68e-3376-4c00-8a3c-7947331af6d4; jwt-session=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7Il9fand0X3JwY19wcm90ZWN0aW9uX2V4cGlyZXNfYXRfbXMiOjE2OTkxMDYwODg1MTgsIl9fand0X3JwY19wcm90ZWN0aW9uX3V1aWQiOiIxZWFkMzUzMS1mYzFhLTRlMmUtYmE3Yy0xNmVlNDYzYWZmYzkiLCJfX2p3dF9ycGNfcHJvdGVjdGlvbl9jcmVhdGVkX2F0X21zIjoxNjk5MDE5NjE2Njk3fSwiaWF0IjoxNjk5MDE5NjE3LCJleHAiOjE2OTkxMDYwMTd9.xg1Vw-zc1pXa9l0OBuz6op0eHafq3nnnabQMwuI6eh0; uev2.gg=true; utag_main__sn=1; utag_main__se=2%3Bexp-session; utag_main__ss=0%3Bexp-session; utag_main__st=1699021421476%3Bexp-session; utag_main_ses_id=1699019621393%3Bexp-session; utag_main__pn=1%3Bexp-session; _userUuid=; utm_medium=undefined; fm_conversion_id=undefined; utm_source=undefined; CONSENTMGR=c1:1%7Cc2:1%7Cc3:1%7Cc4:1%7Cc5:1%7Cc6:1%7Cc7:1%7Cc8:1%7Cc9:1%7Cc10:1%7Cc11:1%7Cc12:1%7Cc13:1%7Cc14:1%7Cc15:1%7Cts:1699019621427%7Cconsent:true; mcd_restaurant=Fresh Market - Rohrmoser Nunciatura.ð; _scid=3ae1f9f0-f3c6-4c0a-8509-749c8cd461c0; _scid_r=3ae1f9f0-f3c6-4c0a-8509-749c8cd461c0; _yjsu_yjad=1699019622.1968d69e-97cc-43cd-8e67-e13015f923bd; _tt_enable_cookie=1; _ttp=R3cFJx7SH8ikPAgRA1A9NJ9fVJ7; _uetsid=663569407a5011ee978699dea3953358; _uetvid=6635b4507a5011ee9de54158a40ff6c7; _ga_P1RM71MPFP=GS1.1.1699019622.1.0.1699019622.60.0.0; _ga=GA1.1.1243059754.1699019623; _sctr=1%7C1698944400000; _gcl_au=1.1.428423390.1699019623"
	
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