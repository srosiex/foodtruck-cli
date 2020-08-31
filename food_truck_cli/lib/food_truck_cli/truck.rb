# Model class to keep track of truck instances
class Truck

    attr_accessor :name, :location

    @@all = []

    def initialize(attr_hash)
        attr_hash.each do |key, value|
            self.send("#{key}=", value)
        end
        self.save
    end
    
    def save
        @@all << self
    end

    def self.all
        @@all
    end
end