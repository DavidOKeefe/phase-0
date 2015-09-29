# Virus Predictor

# I worked on this challenge with: Jamie Runyan.
# We spent 1.5 hours on this challenge.

require_relative 'state_data'

class VirusPredictor
  attr_reader :population_density, :population, :state

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  def virus_effects
    puts "#{state} will lose #{predicted_deaths} people in this outbreak and will spread across the state in #{speed_of_spread} months.\n"
  end

  private
  def predicted_deaths
    case population_density
      when 0..49 then (population * 0.05).floor
      when 50..99 then (population * 0.1).floor
      when 100..149 then (population * 0.2).floor
      when 150..199 then (population * 0.3).floor
      else (population * 0.4).floor
    end
  end

  def speed_of_spread
    case population_density
      when 0..49 then 2.5
      when 50..99 then 2
      when 100..149 then 1.5
      when 150..199 then 1
      else 0.5
    end
  end
end

#=======================================================================

# DRIVER CODE
# initialize VirusPredictor for each state
STATE_DATA.each do |state_name, state_info|
  state = VirusPredictor.new(state_name, state_info[:population_density], state_info[:population])
  state.virus_effects
  end



#=======================================================================
# Reflection Section

# Q: What are the differences between the two different hash syntaxes shown in the state_data file?
# A: The first uses a string and the second uses a symbol
# Q: What does require_relative do? How is it different from require?
# A: require_relative - it needs a file that will be stored in the same location.
#    Require means you have to have to specify the exact location (require only loads once)
#    load - gets called multiple times in case date changes.
# Q: What are some ways to iterate through a hash?
# A: .each, .each_key, .each_pair, .map
# Q: When refactoring virus_effects, what stood out to you about the variables, if anything?
# A: Because they were instance variables they don't need to be passed as arguments
# Q: What concept did you most solidify in this challenge?
# A: That calling methods returns the last evaluation.
