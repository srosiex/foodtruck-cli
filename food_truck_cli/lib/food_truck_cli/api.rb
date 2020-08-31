# // Simple REST and HTTP client 
require 'rest-client'
require 'json'
require 'pry'

# keyname = foodtruck
# keyID = 5m1e3x51t8yew0xtg0d9ii2no
# keysecret = 2u6qsnkwjyigpuuvurgkkd3e3248p9apw4hfiidw5buo2jd2uc
app_token = "xMKoH9K02HOZDWZl5wX2OLmMA"
puts app_token
# secrettoken = InLyqywiC4m9UniT2qPFV-b4qNqL3-p1Pkza

response = RestClient.get("https://data.sfgov.org/resource/jjew-r69b.json?$$app_token="+app_token)
truck_array = JSON.parse(response.body)
binding.pry

puts "goodbye"