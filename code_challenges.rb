# ASSESSMENT 4: Ruby Coding Practical Questions
# MINASWAN ✌️

# --------------------1) Create a method that takes in an array of words and a letter and returns all the words that contain that particular letter.

beverages_array = ['coffee', 'tea', 'juice', 'water', 'soda water']
letter_o = 'o'
# Expected output: ['coffee', 'soda water']
letter_t = 't'
# Expected output: ['tea', 'water', 'soda water']

#make a method that takes an array and a character
def matchingArray(arr, char)
    arr.select { |str| str.include?(char) } #using select, filter through the array to see if any of the string include the character argument, using include?
end # there's less pseudo code needed for ruby because a lot of the methods are really straight forward, requiring a lot less steps than JS
p matchingArray(beverages_array, letter_o)
p matchingArray(beverages_array, letter_t)

# -------------------2) Create a method that takes in a string and removes all the vowels from the string. Use the test variables provided. HINT: Check out this resource: https://ruby-doc.org/core-2.6/String.html#method-i-delete

album1 = 'Rubber Soul'
# Expected output: 'Rbbr Sl'
album2 = 'Sgt Pepper'
# Expected output: 'Sgt Pppr'
album3 = 'Abbey Road'
# Expected output: 'bby Rd'

# make a method that takes a str parameter
def vowless(str)
    str.delete('aeiouAEIOU') #remove all vowels using delete with vowels as the argument lower and uppercase / .downcase is also an option but less accurate to expected outputs
end

p vowless album1
p vowless album2
p vowless album3



# --------------------3a) Create a class called Bike that is initialized with a model, wheels, and current_speed. The default number of wheels is 2. The current_speed should start at 0. Create a get_info method that returns a sentence with all the data from the bike object.

# Expected output example: 'The Trek bike has 2 wheels and is going 0 mph.'


#create a bike class
class Bike
attr_accessor :model, :wheels, :current_speed #use attr_accessor for default getter and setter methods
    def initialize model, wheels, current_speed #initialize the attributes model, wheels, and current_speed
        @model = model #leave model open to an argument
        @wheels = 2 #set wheels to default 2
        @current_speed = 0 # set current speed to default 0
    end
#make a get_info method that outputs all of the Bike object's information
    def get_info
        p "The #{@model} bike has #{@wheels} wheels and is going #{@current_speed} mph." #using string interpolation put the bike object info
    end
#make a pedal faster method that increased the @current_speed 
    def pedal_faster
     @current_speed = @current_speed + 10 #when called current_speed is = to current_speed +10
     p "current speed: #{@current_speed}" #print the current speed
    end
    #make a brake method that Decreases speed but never goes below 0
    def brake
        #make a condition to check to minimum of 0 speed
        if @current_speed > 0 #if speed is greater than 0
       @current_speed = @current_speed - 10 #return the speed -10
        elsif @current_speed < 0 #if the speed is less/going to be less than 0 
            @current_speed = 0 #return the default 0 speed always
        end
        p "current speed:#{@current_speed}" #print the current speed
    end

    

end
#assign the bike object with arguments passed 
fixie = Bike.new'fixie',2, 0
fixie.get_info #call the bike object and the get_info method to display the object's info

# -------------------3b) Add the ability to pedal faster and brake. The pedal_faster method should increase the speed. The brake method should decrease the speed. The bike cannot go negative speeds.

# Expected output example: my_bike.pedal_faster 10 => 10
# Expected output example: my_bike.brake 15 => 0
fixie.pedal_faster #call the pedal faster and brake methods to check for increases and a mininum speed of 0 with brake methods.
fixie.pedal_faster
fixie.brake
fixie.brake
fixie.brake #checks to make sure conditional works to keep speed at a 0 minimum 
