# class that handles CLI use and user input to display data.
class CLI

    def start
        system('clear')

        puts "Welcome to the SanFran Food Truck CLI"
        puts "Loading data..."
        offset = '0'
        API.new.get_food_trucks(offset)

        puts "Data loaded.."
        main_display
    end

    def main_display
        if Truck.all.length == 0
            puts "No trucks are open right now."
        else
        puts "Food Trucks open near you"
        list_trucks
        end
        get_more_trucks
    end

    def list_trucks
        Truck.all.each.with_index(1) do |truck, i|
            puts "#{i}. #{truck.applicant} - #{truck.location}"
        end
    end

    def get_more_trucks
        puts "Load more? Y/N"
        more_trucks_input
    end

    def more_trucks_input
        user_input = gets.strip

        if user_input == "Y"
            puts "do somethibng"
            truck_next_limit
        elsif user_input == "N"
            goodbye
        else
            invalid_choice
            get_more_trucks
        end
    end

    def truck_next_limit

       listed_trucks_count = list_trucks.length 
       offset = listed_trucks_count + 10 

        if listed_trucks_count >= 10 
            API.new.get_food_trucks(offset.to_s)
            list_trucks
            get_more_trucks
        else 
            goodbye
        end
    end

    def invalid_choice
        puts "incorrect input"
    end

    def goodbye
        puts "Thanks for using the Food Truck gem :)"
        exit
    end


end
