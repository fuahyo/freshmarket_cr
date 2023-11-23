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
	cookie = "uev2.id.xp=2ebf8418-a75b-4f29-87ed-92922f09b640; dId=c28525ee-7213-45f9-bf3b-89b31d971bb7; marketing_vistor_id=2461ea78-4719-4260-8328-ec1394ce4736; jwt-session=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE3MDA3NDk0NzgsImRhdGEiOnsiX19qd3RfcnBjX3Byb3RlY3Rpb25fZXhwaXJlc19hdF9tcyI6MTcwMDg0MTA1MzkzOSwiX19qd3RfcnBjX3Byb3RlY3Rpb25fdXVpZCI6IjMxNzVjZDRhLTk3NjEtNDZjZC1hMWMyLTU1MmM3M2NhMDE5ZSIsIl9fand0X3JwY19wcm90ZWN0aW9uX2NyZWF0ZWRfYXRfbXMiOjE3MDA3NTQxNTkwODR9LCJleHAiOjE3MDA4MzU4Nzh9.mBGg3x6o8gjLyprC2XBtlEI3SVVXjDT278m9AhfTZLI; u.bdc=8c31da541f0977d92f97471058ea1b43:Mrv2/X01tKBNO7y/:DWLn+Mf/590rhjCdTLxVurzj/nzWZt1av64ZtywtHhKYq6SS:KchS2JJbyJ1/uo0IojJ0ow==; uev2.id.session=6a4026fe-a885-4902-934a-6e1298bb12be; uev2.ts.session=1700754159062; uev2.diningMode=DELIVERY; uev2.gg=true; utag_main__sn=1; utag_main__se=2%3Bexp-session; utag_main__ss=0%3Bexp-session; utag_main__st=1700755964047%3Bexp-session; utag_main_ses_id=1700754163818%3Bexp-session; utag_main__pn=1%3Bexp-session; _userUuid=; utm_medium=undefined; fm_conversion_id=undefined; utm_source=undefined; CONSENTMGR=c1:1%7Cc2:1%7Cc3:1%7Cc4:1%7Cc5:1%7Cc6:1%7Cc7:1%7Cc8:1%7Cc9:1%7Cc10:1%7Cc11:1%7Cc12:1%7Cc13:1%7Cc14:1%7Cc15:1%7Cts:1700754163839%7Cconsent:true; mcd_restaurant=Fresh Market - Rohrmoser Nunciatura.ð; _scid=98d3c7dc-2ebc-4c9a-8c4a-a0acd2fc974c; _scid_r=98d3c7dc-2ebc-4c9a-8c4a-a0acd2fc974c; _uetsid=f1d46d308a1611ee9fb96d931265adf3; _uetvid=f1d478608a1611eeb6843b78db91373e; _yjsu_yjad=1700754164.d2a50de6-a66f-442a-8804-2624f6692e42; _ga_P1RM71MPFP=GS1.1.1700754164.1.0.1700754164.60.0.0; _ga=GA1.1.1795024526.1700754165; _tt_enable_cookie=1; _ttp=um9gQ2GeLEBMYdLLvZWWMtvV-6F; _sctr=1%7C1700672400000; _gcl_au=1.1.34204147.1700754165"
	
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
