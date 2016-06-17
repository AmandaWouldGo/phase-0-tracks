# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Require_relative accesses another file (state_data.rb) that is holding info
# to be processed in the VirusPredictor methods. Relative refers to files within the
# same data tree. Relative accesses info relative to where file x is housed (within same directory)
# Require gets files from anywhere.
require_relative 'state_data'

class VirusPredictor
# initialize creates new instance of class with class attributes
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# runs the two private methods within the class
  def virus_effects
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

  private

# directly calls the attributes on the instance of the class, performs logic with them
# output: a final summary string
  def predicted_deaths(population_density, population, state)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

# sets a variable value to zero but reassigns it based on the results of the conditional.
  def speed_of_spread(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

# if we put it here is reusable

# if we call .new inside a class it will initialize
# use self to call and write def self.<method>
# .new is a class method
# iterate though each item in state_data hash and build a new instance for each state.

  def self.state_report
    STATE_DATA.each do |state, data|
      each_state = VirusPredictor.new(state, data[:population_density], data[:population])
      each_state.virus_effects
    end
  end
end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
# iterate through the state_data hash to build instances of VirusPredictor class for each state

VirusPredictor.state_report


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section