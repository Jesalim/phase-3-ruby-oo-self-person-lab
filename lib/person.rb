# your code goes here


class Person
    attr_reader :name, :bank_account, :happiness, :hygiene
  
    def initialize(name)
      @name = name
      @bank_account = 25
      @happiness = 8
      @hygiene = 8
    end
  
    def bank_account=(value)
      @bank_account = value
    end
  
    def happiness=(value)
      @happiness = value > 10 ? 10 : value < 0 ? 0 : value
    end
  
    def hygiene=(value)
      @hygiene = value > 10 ? 10 : value < 0 ? 0 : value
    end
  
    def clean?
      @hygiene > 7
    end
  
    def happy?
      @happiness > 7
    end
  
    def get_paid(amount)
      @bank_account += amount
      "all about the benjamins"
    end
  
    def take_bath
      @hygiene += 4
      "♪ Rub-a-dub just relaxing in the tub ♫"
    #   self.hygiene = [hygiene + 10, 100].min
    end
  
    def work_out
      @happiness += 2
      @hygiene -= 3
      "♪ another one bites the dust ♫"
    #   self.hygiene = [hygiene - 10, 0].max
    # self.happiness = [happiness + 10, 100].min
    end
  
    def call_friend(friend)
      @happiness += 3
      friend.happiness += 3
      "Hi #{friend.name}! It's #{@name}. How are you?"
    #   self.happiness = [happiness + 10, 100].min
    # friend.happiness = [friend.happiness + 10, 100].min
    end
  
    def start_conversation(friend, topic)
      case topic
      when "politics"
        @happiness -= 2
        friend.happiness -= 2
        "blah blah partisan blah lobbyist"
        # happiness_change = rand(-10..0)
      when "weather"
        @happiness += 1
        friend.happiness += 1
        "blah blah sun blah rain"
        # happiness_change = rand(0..10)
      else
        "blah blah blah blah blah"
      end
    end
  end
  
