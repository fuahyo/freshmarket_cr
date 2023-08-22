module ReqHeaders

    CategoriesHeaders = {
		"Accept" => "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8",
		"Accept-Encoding" => "gzip, deflate, br",
		"Accept-Language" => "en-US,en;q=0.5",
		"DNT" => "1",
		"Host" => "www.ubereats.com",
		"Upgrade-Insecure-Requests" => "1",
	}


	#cookie = "uev2.id.xp=dde71820-d098-415f-a826-0584e58fea99; dId=5fdd0803-1d97-4415-a9d4-5a2d39cef0da; uev2.id.session=5fa2ec2c-dcad-4f87-8490-02dd4077fb8a; uev2.ts.session=1679414270984; uev2.diningMode=DELIVERY; marketing_vistor_id=be3cf0ef-774a-4b40-8eca-d2f0af2c0e6c; jwt-session=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7Il9fand0X3JwY19wcm90ZWN0aW9uX2V4cGlyZXNfYXRfbXMiOjE2Nzk0MTU2NjQwMDksIl9fand0X3JwY19wcm90ZWN0aW9uX3V1aWQiOiI4OWJhMDQ0Zi02ZmVjLTQ5YTEtOTY2MS1jNjQwNGZkYTkyYTAiLCJfX2p3dF9ycGNfcHJvdGVjdGlvbl9jcmVhdGVkX2F0X21zIjoxNjc5NDE0MjcxMDA5fSwiaWF0IjoxNjc5NDE0MjcyLCJleHAiOjE2Nzk1MDA2NzJ9.WaGpLwXs00jvtpeMjXSTPMqCx370V23zyqwpDM9Hnes; uev2.gg=true; utag_main=v_id:018704e4336e00168c7946efcc280004c006b009007e5$_sn:1$_se:2$_ss:0$_st:1679416077071$ses_id:1679414276978%3Bexp-session$_pn:1%3Bexp-session; _userUuid=; utm_medium=undefined; fm_conversion_id=undefined; utm_source=undefined; CONSENTMGR=c1:1%7Cc2:1%7Cc3:1%7Cc4:1%7Cc5:1%7Cc6:1%7Cc7:1%7Cc8:1%7Cc9:1%7Cc10:1%7Cc11:1%7Cc12:1%7Cc13:1%7Cc14:1%7Cc15:1%7Cts:1679414277005%7Cconsent:true; mcd_restaurant=Fresh Market - Rohrmoser ð; _scid=cdd2aa06-d24a-47fd-9828-3bdf89e89008; _rdt_uuid=1679414277735.89b5771b-465f-4f23-a65b-7f2d9a35b05a; _uetsid=263e1970c80111eda70f79a18362f288; _uetvid=263e1fe0c80111ed8403a9ffc1c15123; _gcl_au=1.1.479652098.1679414278; _tt_enable_cookie=1; _ttp=AYRiTLlbPDl0WeknBMb8LKvASQw; _ga_P1RM71MPFP=GS1.1.1679414278.1.0.1679414278.60.0.0; _ga=GA1.1.1163426646.1679414278"
	#cookie = "uev2.id.xp=f8aed2e4-2c16-4924-970d-f9566d0d97ff; dId=02b48780-6ac5-4878-ad34-4b63fc864815; marketing_vistor_id=179a9e5c-fceb-406f-a0f6-4f4606f5b477; uev2.gg=true; _scid=cce3b125-bf6c-45f8-80dd-e5d15c7cd7fc; uev2.diningMode=DELIVERY; uev2.loc=%7B%22address%22%3A%7B%22address1%22%3A%22Berlin%22%2C%22address2%22%3A%22%22%2C%22aptOrSuite%22%3A%22%22%2C%22eaterFormattedAddress%22%3A%22Berlin%2C%20Germany%22%2C%22subtitle%22%3A%22%22%2C%22title%22%3A%22Berlin%22%2C%22uuid%22%3A%22%22%7D%2C%22latitude%22%3A52.52000659999999%2C%22longitude%22%3A13.404954%2C%22reference%22%3A%22ChIJAVkDPzdOqEcRcDteW0YgIQQ%22%2C%22referenceType%22%3A%22google_places%22%2C%22type%22%3A%22google_places%22%2C%22source%22%3A%22manual_auto_complete%22%2C%22addressComponents%22%3A%7B%22countryCode%22%3A%22%22%2C%22firstLevelSubdivisionCode%22%3A%22%22%2C%22city%22%3A%22%22%2C%22postalCode%22%3A%22%22%7D%2C%22originType%22%3A%22user_autocomplete%22%7D; jwt-session=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE2NDY4OTczNjIsImV4cCI6MTY0Njk4Mzc2Mn0.atTim3s12gq266M63y3gb-5ndw4a4CqxEsIVTEK4_hE; uev2.id.session=1de21194-5b97-4692-afde-02fe8efb65e5; uev2.ts.session=1646940859458"
	cookie = "uev2.id.xp=6925fef6-0a04-48cc-bfee-574dc3cd8d6a; dId=edd46662-ed23-47d8-9b05-d508b99a363c; uev2.id.session=d17e1da6-fe3c-44a2-9ac4-2b22db08bd5f; uev2.ts.session=1692719341609; marketing_vistor_id=6b2b3ecf-b077-46fa-9919-2177abd538e0; jwt-session=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE2OTI3MTkzNDEsImRhdGEiOnsiX19qd3RfcnBjX3Byb3RlY3Rpb25fZXhwaXJlc19hdF9tcyI6MTY5MjcyMDYxMzA4MSwiX19qd3RfcnBjX3Byb3RlY3Rpb25fdXVpZCI6ImU0ODMyZTY4LTQyZmYtNGQyNi05M2JlLTZjNTZjNWVkMjBlMyIsIl9fand0X3JwY19wcm90ZWN0aW9uX2NyZWF0ZWRfYXRfbXMiOjE2OTI3MTkzOTAwODF9LCJleHAiOjE2OTI4MDU3NDF9.dZKCPSKUy7GEQrT35Ps8pVqKF43kYUz1MOEd9fjafIA; uev2.gg=true; utag_main=v_id:018a1df02d360016197454e506950004c005d009007e5$_sn:1$_se:3$_ss:0$_st:1692721206349$ses_id:1692719394103%3Bexp-session$_pn:1%3Bexp-session; _userUuid=; utm_medium=undefined; fm_conversion_id=undefined; utm_source=undefined; CONSENTMGR=c1:1%7Cc2:1%7Cc3:1%7Cc4:1%7Cc5:1%7Cc6:1%7Cc7:1%7Cc8:1%7Cc9:1%7Cc10:1%7Cc11:1%7Cc12:1%7Cc13:1%7Cc14:1%7Cc15:1%7Cts:1692719394122%7Cconsent:true; mcd_restaurant=Fresh Market - Rohrmoser Nunciatura.ð; _scid=e2cf4b65-c17f-4246-b7f0-8f060f71ba09; _scid_r=e2cf4b65-c17f-4246-b7f0-8f060f71ba09; _ga_P1RM71MPFP=GS1.1.1692719394.1.1.1692719406.48.0.0; _ga=GA1.1.149485651.1692719395; _tt_enable_cookie=1; _ttp=XVXHr5BKItx8jx6iPrmjHt5zHHp; _sctr=1%7C1692637200000; _gcl_au=1.1.2000200965.1692719396; uev2.loc=%7B%22address%22%3A%7B%22address1%22%3A%22San%20Jos%C3%A9%22%2C%22address2%22%3A%22Province%22%2C%22aptOrSuite%22%3A%22%22%2C%22eaterFormattedAddress%22%3A%22San%20Jos%C3%A9%20Province%2C%20San%20Jos%C3%A9%2C%20Costa%20Rica%22%2C%22subtitle%22%3A%22Province%22%2C%22title%22%3A%22San%20Jos%C3%A9%22%2C%22uuid%22%3A%22%22%7D%2C%22latitude%22%3A9.9280694%2C%22longitude%22%3A-84.0907246%2C%22reference%22%3A%22ChIJxRUNxULjoI8RgrgRn2pqdOY%22%2C%22referenceType%22%3A%22google_places%22%2C%22type%22%3A%22google_places%22%2C%22addressComponents%22%3A%7B%22city%22%3A%22San%20Jos%C3%A9%22%2C%22countryCode%22%3A%22CR%22%2C%22firstLevelSubdivisionCode%22%3A%22San%20Jos%C3%A9%20Province%22%2C%22postalCode%22%3A%22%22%7D%2C%22categories%22%3A%5B%22locality%22%2C%22political%22%5D%2C%22originType%22%3A%22user_autocomplete%22%2C%22source%22%3A%22manual_auto_complete%22%7D; _uetsid=89cf79d0410311eea9b15f69f2a1057a; _uetvid=89cf8670410311eeb2aa69eec07b3292"
	
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