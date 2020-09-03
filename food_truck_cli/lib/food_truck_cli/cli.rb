
class CLI

    def start
        system('clear')

        puts "Welcome to the SanFran Food Truck CLI"
        puts "Loading data..."

        API.new.get_food_trucks
        puts "Data loaded.."
        main_display
    end

    def main_display
        if Truck.all.length == 0
            puts "No trucks are open right now."
        else
        puts "Food Trucks open near you"
        Truck.all.each.with_index(1) do |truck, i|
            puts "#{i}. #{truck.applicant} - #{truck.location}"
        end
        end
        get_more_trucks
    end

    def get_more_trucks
        puts "Load more? Y/N"
        more_trucks_input
    end

    def more_trucks_input
        user_input = gets.strip

        if user_input == "Y" || "y"
            puts "do somethibng"
        elsif user_input == "N" || "n"
            goodbye
        else
            invalid_choice
            get_more_trucks
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
