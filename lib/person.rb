class Person
    attr_reader :name
    attr_accessor :bank_account
    attr_writer :happiness, :hygiene

    def initialize (name)
       
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    def happiness
        @happiness.clamp(0,10)
    end

    def hygiene
        @hygiene.clamp(0,10)
    end

    def happy?
        @happiness > 7? true : false
    end 

    def clean?
        @hygiene > 7? true : false
    end

    def get_paid(num)
        @bank_account += num
        "all about the benjamins"
    end

   

    def take_bath

        self.hygiene = (self.hygiene + 4)
    
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    
    def work_out
     
        self.hygiene = (self.hygiene - 3)
        self.happiness = (self.happiness + 2)
    
        return "♪ another one bites the dust ♫"
    
    end


    def call_friend(friend)
        self.happiness=(self.happiness + 3)
        friend.happiness=(friend.happiness+3)
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
    
    def start_conversation(friend,topic)
        if topic == "politics"
            self.happiness=(self.happiness-2)
            friend.happiness=(friend.happiness-2)
            return "blah blah partisan blah lobbyist"

        elsif topic == "weather"
            self.happiness=(self.happiness+1)
            friend.happiness=(friend.happiness+1)
            return "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end

end
