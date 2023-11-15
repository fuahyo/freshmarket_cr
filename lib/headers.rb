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
	cookie = "u.bdc=e2ff02b4a28e62f5ce45844e3aee8f7c:gqG2Jupl5OPDah8x:cFSkkIqJPKUBNyBOIRLNe5GecqPWQHIqn+JVkcZfRR2BvPM8:fSW5gORbUGspqwzHIa9WSw==; uev2.id.xp=102a10d4-dc61-45e8-9e98-a113b135330f; dId=50ec439b-1c2b-4290-a66d-642cc294f3e7; uev2.id.session=a37e93e8-926a-4a4d-b9f0-a67b46e10b24; uev2.ts.session=1700050878741; uev2.diningMode=DELIVERY; marketing_vistor_id=83de1552-ddf2-4300-84f5-2da1e43a7036; jwt-session=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7Il9fand0X3JwY19wcm90ZWN0aW9uX2V4cGlyZXNfYXRfbXMiOjE3MDAxMzcwNjI1MjEsIl9fand0X3JwY19wcm90ZWN0aW9uX3V1aWQiOiI0N2Q5ZDg2MC1hMWYwLTRiYzYtYmY5OS03M2NjZTQzYzQxYWIiLCJfX2p3dF9ycGNfcHJvdGVjdGlvbl9jcmVhdGVkX2F0X21zIjoxNzAwMDUwODc4NzYzfSwiaWF0IjoxNzAwMDUwODc5LCJleHAiOjE3MDAxMzcyNzl9.grLrvb5ygjPbGs7zY6awpM_YPb9e3KyMlW7r1dGoc1M; uev2.gg=true; utag_main__sn=1; utag_main__se=2%3Bexp-session; utag_main__ss=0%3Bexp-session; utag_main__st=1700052683749%3Bexp-session; utag_main_ses_id=1700050883332%3Bexp-session; utag_main__pn=1%3Bexp-session; _userUuid=; utm_medium=undefined; fm_conversion_id=undefined; utm_source=undefined; CONSENTMGR=c1:1%7Cc2:1%7Cc3:1%7Cc4:1%7Cc5:1%7Cc6:1%7Cc7:1%7Cc8:1%7Cc9:1%7Cc10:1%7Cc11:1%7Cc12:1%7Cc13:1%7Cc14:1%7Cc15:1%7Cts:1700050883366%7Cconsent:true; _scid=1092cb4a-20ce-49ba-956b-cdd3819aaaa9; _scid_r=1092cb4a-20ce-49ba-956b-cdd3819aaaa9; mcd_restaurant=Fresh Market - Rohrmoser Nunciatura.ð; _ga_P1RM71MPFP=GS1.1.1700050884.1.0.1700050884.60.0.0; _ga=GA1.1.655114922.1700050885; _yjsu_yjad=1700050884.6346ad6c-dd85-439f-81fe-a57c88d285c6; _gcl_au=1.1.738726735.1700050885; _uetsid=7e6eaa4083b111eebcc1ef33ae1634db; _uetvid=7e6ebaa083b111eea40fd9a5b8fec435; _tt_enable_cookie=1; _ttp=Vn7dRxPOqAD5cVL5-AIId20Ghjo; _sctr=1%7C1699981200000"
	
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
