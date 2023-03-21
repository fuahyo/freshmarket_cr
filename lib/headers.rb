module ReqHeaders

    CategoriesHeaders = {
		"Accept" => "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8",
		"Accept-Encoding" => "gzip, deflate, br",
		"Accept-Language" => "en-US,en;q=0.5",
		"DNT" => "1",
		"Host" => "www.ubereats.com",
		"Upgrade-Insecure-Requests" => "1",
	}


	cookie = "uev2.id.xp=dde71820-d098-415f-a826-0584e58fea99; dId=5fdd0803-1d97-4415-a9d4-5a2d39cef0da; uev2.id.session=5fa2ec2c-dcad-4f87-8490-02dd4077fb8a; uev2.ts.session=1679414270984; uev2.diningMode=DELIVERY; marketing_vistor_id=be3cf0ef-774a-4b40-8eca-d2f0af2c0e6c; jwt-session=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7Il9fand0X3JwY19wcm90ZWN0aW9uX2V4cGlyZXNfYXRfbXMiOjE2Nzk0MTU2NjQwMDksIl9fand0X3JwY19wcm90ZWN0aW9uX3V1aWQiOiI4OWJhMDQ0Zi02ZmVjLTQ5YTEtOTY2MS1jNjQwNGZkYTkyYTAiLCJfX2p3dF9ycGNfcHJvdGVjdGlvbl9jcmVhdGVkX2F0X21zIjoxNjc5NDE0MjcxMDA5fSwiaWF0IjoxNjc5NDE0MjcyLCJleHAiOjE2Nzk1MDA2NzJ9.WaGpLwXs00jvtpeMjXSTPMqCx370V23zyqwpDM9Hnes; uev2.gg=true; utag_main=v_id:018704e4336e00168c7946efcc280004c006b009007e5$_sn:1$_se:2$_ss:0$_st:1679416077071$ses_id:1679414276978%3Bexp-session$_pn:1%3Bexp-session; _userUuid=; utm_medium=undefined; fm_conversion_id=undefined; utm_source=undefined; CONSENTMGR=c1:1%7Cc2:1%7Cc3:1%7Cc4:1%7Cc5:1%7Cc6:1%7Cc7:1%7Cc8:1%7Cc9:1%7Cc10:1%7Cc11:1%7Cc12:1%7Cc13:1%7Cc14:1%7Cc15:1%7Cts:1679414277005%7Cconsent:true; mcd_restaurant=Fresh Market - Rohrmoser ð; _scid=cdd2aa06-d24a-47fd-9828-3bdf89e89008; _rdt_uuid=1679414277735.89b5771b-465f-4f23-a65b-7f2d9a35b05a; _uetsid=263e1970c80111eda70f79a18362f288; _uetvid=263e1fe0c80111ed8403a9ffc1c15123; _gcl_au=1.1.479652098.1679414278; _tt_enable_cookie=1; _ttp=AYRiTLlbPDl0WeknBMb8LKvASQw; _ga_P1RM71MPFP=GS1.1.1679414278.1.0.1679414278.60.0.0; _ga=GA1.1.1163426646.1679414278"
	
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
		"DNT" => "1",
		"Host" => "www.ubereats.com",
		#Origin: https://www.ubereats.com
		"User-Agent" => "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36",
		"x-csrf-token" => "x",
	}
end