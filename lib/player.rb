class Player
  DEFAULT_BLOOD = 100
  SMACKAGE = 10
  attr_reader :name, :lifeblood

  def initialize(name)
    @name = name
    @lifeblood = DEFAULT_BLOOD
  end

  def get_smacked
    receive_damage SMACKAGE
  end

  private

  def receive_damage value
    @lifeblood -= value
  end
end
