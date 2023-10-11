module ReqHeaders

    CategoriesHeaders = {
		"Accept" => "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8",
		"Accept-Encoding" => "gzip, deflate, br",
		"Accept-Language" => "en-US,en;q=0.5",
		"DNT" => "1",
		"Host" => "www.ubereats.com",
		"Upgrade-Insecure-Requests" => "1",
	}


	cookie = "uev2.id.xp=afcd5846-49ba-44fe-9bb9-651113e5dbff; dId=7fa1f00a-25f0-44af-bfff-e48b4149eeff; uev2.id.session=a37e65c3-2b25-4db5-aacf-9e49c75e1d45; uev2.ts.session=1696999358935; marketing_vistor_id=5c723172-28a4-419b-8004-5bf87e89214d; jwt-session=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE2OTY5OTkzNTgsImRhdGEiOnsiX19qd3RfcnBjX3Byb3RlY3Rpb25fZXhwaXJlc19hdF9tcyI6MTY5NzA4NjU1NzEzNSwiX19qd3RfcnBjX3Byb3RlY3Rpb25fdXVpZCI6ImI2OGZiNTkxLWIzNmQtNDA2Yi04MzJiLTdjYzgwZTQ0MjZlMiIsIl9fand0X3JwY19wcm90ZWN0aW9uX2NyZWF0ZWRfYXRfbXMiOjE2OTcwMDA2MDAxMzV9LCJleHAiOjE2OTcwODU3NTh9.Yzn8TKjYOx8ZtK9TwIEI9XtKW4txlQTjuoSExom_D8U; uev2.gg=true; utm_medium=undefined; fm_conversion_id=undefined; utm_source=undefined; CONSENTMGR=c1:1%7Cc2:1%7Cc3:1%7Cc4:1%7Cc5:1%7Cc6:1%7Cc7:1%7Cc8:1%7Cc9:1%7Cc10:1%7Cc11:1%7Cc12:1%7Cc13:1%7Cc14:1%7Cc15:1%7Cts:1697000599033%7Cconsent:true; utag_main=v_id:018b1d1e2df2000274dc1f44e4d905081011707900bd0$_sn:1$_se:2$_ss:0$_st:1697002399035$ses_id:1697000599026%3Bexp-session$_pn:1%3Bexp-session; _userUuid=; mcd_restaurant=Fresh Market - Rohrmoser Nunciatura.🛒"
	
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