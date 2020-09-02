
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
        puts "Food Trucks open near you"
        Truck.all.each.with_index(1) do |truck, i|
            puts "#{i}. #{truck.applicant}"
        end
    end

    def goodbye
        puts "Thanks for using the Food Truck gem :)"
        exit
    end


end
