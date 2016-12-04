class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account, :people

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
        @people = []
    end

    def happiness=(happiness)
        @happiness = if happiness > 9
                         10
                     elsif happiness < 1
                         0
                     else
                         happiness
                     end
    end

    def happy?
        return true if @happiness > 7
        false
      end

    def hygiene=(hygiene)
        @hygiene = if hygiene > 9
                       10
                   elsif hygiene < 1
                       0
                   else
                       hygiene
                   end
    end

    def clean?
        return true if @hygiene > 7
        false
    end

    def get_paid(salary)
        self.bank_account += salary
        'all about the benjamins'
    end

    def take_bath
        self.hygiene += 4
        '♪ Rub-a-dub just relaxing in the tub ♫'
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        '♪ another one bites the dust ♫'
    end

    def call_friend(person)
        self.happiness += 3
        person.happiness += 3
        "Hi #{person.name}! It's #{name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == 'politics'
            person.happiness -= 2
            self.happiness -= 2
            'blah blah partisan blah lobbyist'
        elsif topic == 'weather'
            person.happiness += 1
            self.happiness += 1
            'blah blah sun blah rain'
        else
            'blah blah blah blah blah'
        end
    end
end
