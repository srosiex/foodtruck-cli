# // Simple REST and HTTP client 
require 'rest-client'
require 'json'
require 'pry'
require_relative './truck'

# food truck count + limit

# keyname = foodtruck
# keyID = 5m1e3x51t8yew0xtg0d9ii2no
# keysecret = 2u6qsnkwjyigpuuvurgkkd3e3248p9apw4hfiidw5buo2jd2uc

# secrettoken = InLyqywiC4m9UniT2qPFV-b4qNqL3-p1Pkza

# starttime="+current_time

class API
    def get_food_trucks(offset)
        app_token = "xMKoH9K02HOZDWZl5wX2OLmMA"
        limit = '10'
        current_time = Time.now.strftime("%-k:%M")
        # offset = '0'

        response = RestClient.get("https://data.sfgov.org/resource/jjew-r69b.json?$$app_token="+app_token+"&$limit="+limit+"&$order=applicant&$offset="+offset)
        truck_array = JSON.parse(response.body)
        truck_array.each do |truck|
            Truck.new(truck)
        end
    end

    # def get_all_trucks(offset)
    #     app_token = "xMKoH9K02HOZDWZl5wX2OLmMA"
    #     limit = '10'
    #     offset = '0'
    #     current_time = Time.now.strftime("%-k:%M")

    #     if page
    #         response = RestClient.get(page)
    #     else
    #         response = RestClient.get("https://data.sfgov.org/resource/jjew-r69b.json?$$app_token="+app_token+"&$limit="+limit+"&$offset="+offset+"&$order=applicant") 
    #     end

    #     truck_array = JSON.parse(response.body)
    #     truck_array.each do |truck|
    #         Truck.new(truck)
    #     end 
    # end
    end





