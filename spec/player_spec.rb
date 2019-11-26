require 'player'

describe Player do
  subject(:player) { Player.new("Timouth") }

  it "should have a name" do
    expect(player).to have_attributes name: "Timouth"
  end

  it "should an HP" do
    expect(player).to have_attributes lifeblood: Player::DEFAULT_BLOOD
  end

  describe "#get_smacked" do
    it "reduces the player hit points by SMACKAGE!" do
      expect { player.get_smacked }.to change { player.lifeblood }.by -Player::SMACKAGE
    end
  end
end
