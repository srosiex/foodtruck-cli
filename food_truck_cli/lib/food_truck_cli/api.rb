
class API
    # Retrieve food truck data from API.
    def get_food_trucks(offset)
        app_token = "xMKoH9K02HOZDWZl5wX2OLmMA"
        limit = '10'
        current_date = Date.today.wday.to_s
        current_time = Time.now.strftime("%-k:%M").to_s

        response = RestClient.get("https://data.sfgov.org/resource/jjew-r69b.json?$$app_token="+app_token+"&$limit="+limit+"&$order=applicant&$offset="+offset+"&dayorder="+current_date+"&$where=start24<=%27"+current_time+"%27%20and%20end24>%27"+current_time+"%27")
        truck_array = JSON.parse(response.body)
        truck_array.each do |truck|
            Truck.new(truck)
        end
    end
    end





