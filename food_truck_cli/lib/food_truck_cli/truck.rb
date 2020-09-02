# Model class to keep track of truck instances
class Truck

    attr_accessor :applicant, :location

    @@all = []

    def initialize(attr_hash)
        attr_hash.each do |key, value|
            self.send("#{key}=", value) if self.respond_to?("#{key}=")
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