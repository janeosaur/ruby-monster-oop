### monster.rb - run this file

# Monster class
class Monster
  attr_accessor :habitat, :threat_level, :name

  @@count = 0

  def initialize (threat_level=:medium)
    puts "Rawr!"

    if threat_level == :low || threat_level == :medium || threat_level == :high || threat_level == :midnight
      @threat_level = threat_level
    else
      raise "cannot create monster - invalid threat level friendly"
    end

    @@count = @@count + 1 # @@count++?
    puts "#{@@count} monsters have spawned"
  end

  def habitat? argument
    argument == @habitat # can be habitat as well
  end

  def self.count
    @@count
  end

  def self.fight monster_1, monster_2
    if monster_1.threat_level == monster_2.threat_level
      "tied but monster 2: #{monster_2} wins"
    elsif monster_1.threat_level == :low
      "monster 2: #{monster_2} wins"
    elsif monster_1.threat_level == :medium
      if monster_2.threat_level == :low
        "monster 1: #{monster_1} wins"
      else
        "monster 2: #{monster_2} wins"
      end
    else
      if monster_2.threat_level == :midnight
        "monster 2: #{monster_2} wins"
      else
        "monster 1: #{monster_1} wins"
      end
    end
  end
end

# Zombie class
class Zombie < Monster
  def initialize (threat_level=:medium)
    super(threat_level)
    @habitat = "graveyard"
  end
end

# Werewolf class



# Flying module



# Vampire class




### "Driver" Code Area
# predator = Monster.new(:medium)

# alien = Monster.new(:high)

# puts Monster.count
# rubber_ducky = Monster.new(:friendly)
# p rubber_ducky
# p Monster.fight(predator, alien)
# p Monster.fight(alien, predator)

rob = Zombie.new
p rob #<Zombie:0x007fa90d80e360 @habitat="graveyard">
puts rob.habitat
puts rob.threat_level 
rob.name = "Rob Zombie"
puts rob.name
