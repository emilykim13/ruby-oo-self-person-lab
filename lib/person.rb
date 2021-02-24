# your code goes here
require 'pry'

class Person
    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    
def happiness=(points)
    @happiness = points
    @happiness = 10 if @happiness > 10
        @happiness = 0 if @happiness < 0
    end 

def hygiene=(points)
    @hygiene = points
    @hygiene = 10 if @hygiene > 10
    @hygiene = 0 if @hygiene < 0
end 

def happy?
    @happiness > 7
end

def clean?
    @hygiene > 7
end

def get_paid(salary)
    @bank_account += salary
    return "all about the benjamins"
end

def take_bath()
    self.hygiene= (@hygiene + 4) # one way to call
    return '♪ Rub-a-dub just relaxing in the tub ♫'
end

def work_out() #() dont matter, you can take them off or leave it
    self.happiness += 2 #another way to call
    self.hygiene -= 3
    return '♪ another one bites the dust ♫'
end

def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
end


end


# binding.pry