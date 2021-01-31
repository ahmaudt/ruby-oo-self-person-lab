# your code goes here

class Person

    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end


    def happiness
        if @happiness < 0
            @happiness = 0
        elsif @happiness > 10
            @happiness = 10
        else
            @happiness
        end
    end

    def hygiene
        if @hygiene < 0
            @hygiene = 0
        elsif @hygiene > 10
            @hygiene = 10
        else
            @hygiene
        end
    end

    def happy? #! this does not need an argument because it is performed on the instance.
                #! it's asking what the current happiness value is for the object Person (whomever that may be)
        if happiness > 7
            true
        else
            false
        end
    end

    def clean?
        if hygiene > 7
            true
        else
            false
        end
    end

    def get_paid(salary)
        @bank_account+=salary
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene+=4 #! Here instead of like we'd do if instantiated, we call self
                        #! If an instance, we'd have jimmy.hygiene
                        #! but we're making the call in the class
                        #! so the object we're calling is itself, i.e. "self"
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene-=3
        self.happiness+=2
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness+=3
        friend.happiness+=3
        "Hi #{friend.name}! It's #{@name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
           self.happiness-=2 
           friend.happiness-=2
           "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness+=1
            friend.happiness+=1
            "blah blah sun blah rain"
        else 
            "blah blah blah blah blah"
        end
    end


end
