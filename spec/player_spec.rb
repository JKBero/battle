require 'player'

describe Player do
  subject(:player) { Player.new("Timouth") }

  it "should have a name" do
    expect(player).to have_attributes name: "Timouth"
  end
end
