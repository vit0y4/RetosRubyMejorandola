module Action
  def jump
    @distance = rand(4) + 2
    puts "I jumped forward #{@distance} feet!"
  end
  def run
    @distance = @distance + 10
    seconds = 10/@velocity
    sleep(seconds)
    puts "I run forward #{@distance} feet!"
    puts "Time: #{seconds}"
  end
end
class Rabbit
  include Action
  
  attr_reader :name, :velocity
  
  def initialize(name)
    @name = name
    @velocity = 2
  end
end
class Cricket
   include Action
  attr_reader :name, :velocity

  
  def initialize(name)
    @name = name
    @velocity = 4
  end

  def chirp
    times = rand(100) + 10
    message = "Chirp... chirp!!"
    puts message * times
  end
end

peter = Rabbit.new("Peter")
jiminy = Cricket.new("Jiminy")
peter.jump
jiminy.jump

peter.run
jiminy.run

jiminy.chirp

