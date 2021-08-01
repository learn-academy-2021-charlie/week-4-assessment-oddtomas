# ASSESSMENT 4: Ruby Coding Practical Questions
# MINASWAN ✌️

# --------------------1) Create a method that takes in an array of words and a letter and returns all the words that contain that particular letter.

beverages_array = ['coffee', 'tea', 'juice', 'water', 'soda water']
letter_o = 'o'
# Expected output: ['coffee', 'soda water']
letter_t = 't'
# Expected output: ['tea', 'water', 'soda water']

def matchingArray(arr, char)
    arr.select { |str| str.include?(char) }
end
# p matchingArray(beverages_array, letter_o)
# p matchingArray(beverages_array, letter_t)

# -------------------2) Create a method that takes in a string and removes all the vowels from the string. Use the test variables provided. HINT: Check out this resource: https://ruby-doc.org/core-2.6/String.html#method-i-delete

album1 = 'Rubber Soul'
# Expected output: 'Rbbr Sl'
album2 = 'Sgt Pepper'
# Expected output: 'Sgt Pppr'
album3 = 'Abbey Road'
# Expected output: 'bby Rd'

def vowless(str)
    str.delete('aeiouAEIOU')
end

# p vowless album1
# p vowless album2
# p vowless album3



# --------------------3a) Create a class called Bike that is initialized with a model, wheels, and current_speed. The default number of wheels is 2. The current_speed should start at 0. Create a get_info method that returns a sentence with all the data from the bike object.

# Expected output example: 'The Trek bike has 2 wheels and is going 0 mph.'



class Bike
attr_accessor :model, :wheels, :current_speed
    def initialize model, wheels, current_speed
        @model = model
        @wheels = 2
        @current_speed = 0
    end

    def get_info
        p "The #{@model} bike has #{@wheels} wheels and is going #{@current_speed} mph."
    end

    def pedal_faster
     @current_speed = @current_speed + 10
     p "current speed: #{@current_speed}"
    end

    def brake
        reduced_speed = 10
        if @current_speed > 0
       @current_speed = @current_speed - reduced_speed
        elsif @current_speed < 0
            @current_speed = 0
        end
        p "current speed:#{@current_speed}"
    end

    

end

bike_test = Bike.new'wheely',2, 0
bike_test.get_info

# -------------------3b) Add the ability to pedal faster and brake. The pedal_faster method should increase the speed. The brake method should decrease the speed. The bike cannot go negative speeds.

# Expected output example: my_bike.pedal_faster 10 => 10
# Expected output example: my_bike.brake 15 => 0
bike_test.pedal_faster
bike_test.pedal_faster
bike_test.pedal_faster
bike_test.pedal_faster
bike_test.brake
bike_test.brake
bike_test.brake
bike_test.brake
bike_test.brake
bike_test.brake
bike_test.brake

bike_test.brake
