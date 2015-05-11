module Flight  
  attr_reader :is_flying
  airspeed_velocity = 0
  @is_flying = false
  
  def fly
      @is_flying = true if @can_fly
  end

  def land
    @is_flying = false
  end

  #Takes integer parameter representing speed in km/h
  def airspeed_velocity(speed)
    airspeed_velocity = speed
  end

end

class Animal
  attr_reader :coverings, :number_of_legs, :can_fly, :can_swim, :intelligence_level,
              :agression, :type
  
  def initialize
    @coverings = {
      'feathers' => false,
      'hair' => false,
      'scales' => false,
      'fur' => false
    }
    @number_of_legs = 0
    @can_fly = false
    @can_swim = false
    @intelligence_level = [1..5]
    @agression = ['Ghandi', 'MLK', 'Stalin', 'Chuck Norris']
    @type = ''
  end

end

class Mammal < Animal

end

class Amphibian < Animal
  def initialize 
    super
    @can_swim = true
  end
end

class Primate < Mammal
  def initialize 
    super
    @coverings['hair'] = true
  end
end

class Frog < Amphibian
  def initialize 
    super
    @type = "Frog"
    @intelligence_level = 1
  end
end

class Bat < Mammal
include Flight

  def initialize 
    super
    @type = "Bat"
    @can_fly = true
  end
end

class Birds < Animal
include Flight
   attr_reader :has_feathers, :is_flying
   def initialize
    super
    @has_feathers = true
    @can_fly= true
  end
end

class Parrot < Birds
  def initialize 
    super
    @type = "Parrot"
  end
end

class Chimpanzee < Primate
  def initialize 
    super
    @type = "Chimpanzee"
  end
end



my_bat = Bat.new
puts "I'm a #{my_bat.type}. Am flying right now? #{my_bat.is_flying ? 'YES!' : 'No!'}"
my_bat.fly
puts "I'm a #{my_bat.type}. Am flying right now? #{my_bat.fly ? 'YES!' : 'No!'}"

fifi = Chimpanzee.new
puts "I'm a #{fifi.type}"










