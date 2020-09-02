# // Simple REST and HTTP client 
# require 'rest-client'
# require 'json'
# require 'pry'
# require_relative './truck'

# keyname = foodtruck
# keyID = 5m1e3x51t8yew0xtg0d9ii2no
# keysecret = 2u6qsnkwjyigpuuvurgkkd3e3248p9apw4hfiidw5buo2jd2uc

# secrettoken = InLyqywiC4m9UniT2qPFV-b4qNqL3-p1Pkza

class API
    def get_food_trucks
        app_token = "xMKoH9K02HOZDWZl5wX2OLmMA"
        limit = '10'
        current_time = Time.now.strftime("%l%p")

        response = RestClient.get("https://data.sfgov.org/resource/jjew-r69b.json?$$app_token="+app_token+"&$limit="+limit)
        truck_array = JSON.parse(response.body)

        truck_array.each do |truck|
            Truck.new(truck)
        end
    end
    end




