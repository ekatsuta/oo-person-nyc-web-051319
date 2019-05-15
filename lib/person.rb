require 'pry'

class Person
  attr_accessor :bank_account
  attr_reader :name, :happiness, :hygiene

  def initialize(name, min = 0, max = 10)
    @name = name
    @bank_account = 25
    @happiness = 8
      # @happiness.min = min
      # @happiness.max = max
    @hygiene = 8
      # @hygiene.min = min
      # @hygiene.max = max
  end

  def happiness=(points, min = 0, max = 10)
    if points > 10
      @happiness = max
    elsif points < 0
      @happiness = min
    else
       @happiness = points
    end
  end

  def hygiene=(points, min = 0, max = 10)
    if points > 10
      @hygiene = max
    elsif points < 0
      @hygiene = min
    else
      @hygiene = points
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
    @bank_account = @bank_account + salary
    "all about the benjamins"
  end

  def take_bath
    points = @hygiene+4
    self.hygiene=(points)
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end


  def work_out
    points = @happiness+2
    points1 = @hygiene-3
    self.happiness=(points)
    self.hygiene=(points1)
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    points = @happiness+3
    points1 = friend.happiness+3
    self.happiness = points
    friend.happiness = points1
    "Hi #{friend.name}! It's #{@name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      points = @happiness-2
      points1 = person.happiness-2
      self.happiness = points
      person.happiness = points1
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      points = @happiness+1
      points1 = person.happiness+1
      self.happiness = points
      person.happiness = points1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end
end

zoe = Person.new("Zoe")
zoe.take_bath
