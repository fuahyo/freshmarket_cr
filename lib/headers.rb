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
	cookie = "uev2.id.xp=8f1f2bdc-6714-4f57-9b78-08322c55a5b9; dId=5f08a7c9-8a22-43c5-8148-f587fcedc3aa; uev2.id.session=8e428e0f-2d61-4521-85dc-8892ffb232c4; uev2.ts.session=1701952719237; uev2.diningMode=DELIVERY; marketing_vistor_id=9504102c-623d-4f4b-b5c9-ffbf61defb17; jwt-session=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7Il9fand0X3JwY19wcm90ZWN0aW9uX2V4cGlyZXNfYXRfbXMiOjE3MDIwMzk0NDY5NjMsIl9fand0X3JwY19wcm90ZWN0aW9uX3V1aWQiOiI1MDlhYWNhYS0wNzE3LTQ0NzAtYWEyMS01NGEyMzcwZmI1YWUiLCJfX2p3dF9ycGNfcHJvdGVjdGlvbl9jcmVhdGVkX2F0X21zIjoxNzAxOTUyNzE5MjU2fSwiaWF0IjoxNzAxOTUyNzE5LCJleHAiOjE3MDIwMzkxMTl9.qq6qy7SkHj-pTIlxlTLd3j5WC7CjIy_K-J0rTyqtNWo; uev2.gg=true; utag_main__sn=1; utag_main__se=2%3Bexp-session; utag_main__ss=0%3Bexp-session; utag_main__st=1701954525368%3Bexp-session; utag_main_ses_id=1701952724203%3Bexp-session; utag_main__pn=1%3Bexp-session; _userUuid=; utm_medium=undefined; fm_conversion_id=undefined; utm_source=undefined; CONSENTMGR=c1:1%7Cc2:1%7Cc3:1%7Cc4:1%7Cc5:1%7Cc6:1%7Cc7:1%7Cc8:1%7Cc9:1%7Cc10:1%7Cc11:1%7Cc12:1%7Cc13:1%7Cc14:1%7Cc15:1%7Cts:1701952724222%7Cconsent:true; _scid=b1d08a6a-f439-4dd8-b2a1-f3023f288f6b; _scid_r=b1d08a6a-f439-4dd8-b2a1-f3023f288f6b; mcd_restaurant=Fresh Market - Rohrmoser Nunciatura.ð; _uetsid=9033094094fd11ee8dee0fb1462153c2; _uetvid=903320f094fd11eea10b6f973dac9a5b; _ga_P1RM71MPFP=GS1.1.1701952726.1.0.1701952726.60.0.0; _ga=GA1.1.1388086845.1701952726; _yjsu_yjad=1701952726.1651a28a-0be3-478a-972d-ae0edde687a8; _sctr=1%7C1701882000000; _tt_enable_cookie=1; _ttp=aoU1U43T7sN-49u4qNvGO9XLfjM; _gcl_au=1.1.2081405992.1701952727"
	
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
