require 'json'

json_file = File.read('./output3.json')
json_file2 = File.read('./page3.json')
json_response = JSON.parse(json_file)
json_response2 = JSON.parse(json_file2)

# items = json_reponse['item']
output = []
totaItems = json_response.count
totaItems2 = json_response2.count
puts totaItems
puts totaItems2




ctaUri = "ubereats://store/browse?storeUUID=9834f87b-159e-402f-874a-3cb6f4ab657b&sectionUUID=d7ac5020-9761-57e0-82c2-2d7e2387c43f&subsectionUUID=653316a5-ee89-5a9f-9bcd-6013c7009811"

storeUUID = ctaUri.match(/storeUUID=([^&]+)/)[1]

puts storeUUID