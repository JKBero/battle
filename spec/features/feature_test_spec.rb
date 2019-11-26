describe "homepage", type: :feature do
  it "returns something" do
    visit '/'
    expect(page).to have_content 'I want to rip your heart out! Welcome to Battle!'
  end

  context "When players names are entered" do
    before(:each) do
      sign_in_and_play
    end

    it "displays players' names" do
      expect(page).to have_content 'Jade'
      expect(page).to have_content 'Alastair'
    end

    it "shows player 2's hitpoints" do
      expect(page).to have_content 'Alastair: 100/100'
    end

    it "can hit player 2" do
      click_button 'Smack'
      expect(page).to have_content 'Alastair got smacked!'
    end

    it "reduces player 2's HP when SMACKED!" do
      click_button 'Smack'
      expect(page).to have_content 'Alastair: 90/100'
    end
  end
end
