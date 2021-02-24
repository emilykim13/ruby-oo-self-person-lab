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

end


# binding.pry