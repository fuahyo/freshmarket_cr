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
	cookie = "uev2.id.xp=4e97f841-ee94-4323-9a05-5c706d469d86; dId=434ced33-8658-4336-9587-11376fb6026a; uev2.id.session=27206385-b56c-4fcf-8575-25274e0c458c; uev2.ts.session=1701433080501; uev2.diningMode=DELIVERY; marketing_vistor_id=99b22a8f-2211-495c-a8b9-71da948da361; jwt-session=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7Il9fand0X3JwY19wcm90ZWN0aW9uX2V4cGlyZXNfYXRfbXMiOjE3MDE1MTkxMDQzMDksIl9fand0X3JwY19wcm90ZWN0aW9uX3V1aWQiOiJmNmMwNGFmOS03MWJlLTRmZDYtYTA1ZS0yZTgwYzExMGU5OWMiLCJfX2p3dF9ycGNfcHJvdGVjdGlvbl9jcmVhdGVkX2F0X21zIjoxNzAxNDMzMDgwNTIyfSwiaWF0IjoxNzAxNDMzMDgwLCJleHAiOjE3MDE1MTk0ODB9.-2PLyFJoaLerluuva5l2fFxSeB2lKW6H5C_93g7Bojo; uev2.gg=true; utag_main__sn=1; utag_main__se=2%3Bexp-session; utag_main__ss=0%3Bexp-session; utag_main__st=1701434885083%3Bexp-session; utag_main_ses_id=1701433084938%3Bexp-session; utag_main__pn=1%3Bexp-session; _userUuid=; utm_medium=undefined; fm_conversion_id=undefined; utm_source=undefined; CONSENTMGR=c1:1%7Cc2:1%7Cc3:1%7Cc4:1%7Cc5:1%7Cc6:1%7Cc7:1%7Cc8:1%7Cc9:1%7Cc10:1%7Cc11:1%7Cc12:1%7Cc13:1%7Cc14:1%7Cc15:1%7Cts:1701433084957%7Cconsent:true; mcd_restaurant=Fresh Market - Rohrmoser Nunciatura.ð; _scid=96576b6e-042f-48fd-b924-75925eea94a2; _scid_r=96576b6e-042f-48fd-b924-75925eea94a2; _yjsu_yjad=1701433085.a09886b7-1f74-4a71-a943-1e9acdc53f95; _uetsid=ae7055c0904311eeaddab9998ac59bdf; _uetvid=ae709820904311ee9f8a5ba670941c03; _ga_P1RM71MPFP=GS1.1.1701433086.1.0.1701433086.60.0.0; _ga=GA1.1.933992068.1701433086; _gcl_au=1.1.1663640604.1701433086; _sctr=1%7C1701363600000; _tt_enable_cookie=1; _ttp=XnRz697pvFdJycygR8titEVOEPp"
	
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
