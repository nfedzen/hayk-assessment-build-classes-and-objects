require 'pry'

class Building 
    attr_accessor :name, :number_of_tenants
    attr_reader :address, :count
    @@count = 0

    def initialize name, address, number_of_floors, number_of_tenants
        @name = name
        @address = address
        @number_of_floors = number_of_floors
        @number_of_tenants = number_of_tenants
        @average_tenants_per_floor = @number_of_tenants / @number_of_floors
        @@count += 1
    end

    def Building.count
        @@count
    end

    def placard
        return @name, @address
    end

    def tenants_per_floor
        return @average_tenants_per_floor
    end
end

binding.pry
0