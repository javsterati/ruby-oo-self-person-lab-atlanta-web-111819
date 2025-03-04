# your code goes here
require 'pry'
class Person 
    #add attr accessors here
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize(name, bank_account=25, happiness=8, hygiene=8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end 
    
    def hygiene= (num)
        if num > 10 
            @hygiene = 10
        elsif num < 0 
            @hygiene = 0
        else 
            @hygiene = num
        end 
    end 

    def happiness= (num)
        if num > 10 
            @happiness = 10
        elsif num < 0
            @happiness = 0
        else 
            @happiness = num
        end 
    end 

    def clean?
        if @hygiene > 7 
            true
        else 
            false
        end 
    end 

    def happy?
        if @happiness > 7
            true
        else 
            false
        end 
    end 

    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end 
    
    
    def work_out 
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end 

    def call_friend(friend)
        friend.happiness += 3
        self.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness -= 2
            person.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            person.happiness += 1
            "blah blah sun blah rain"
        else 
            "blah blah blah blah blah"
        end
    end

end 