describe "homepage", type: :feature do
  it "returns something" do
    visit '/'
    expect(page).to have_content 'I want to rip your heart out! Welcome to Battle!'
  end

  it "accepts players names" do
    visit '/'
    fill_in 'Player 1', with: 'Jade'
    fill_in 'Player 2', with: 'Alastair'
    click_button 'FIGHT!'
    expect(page).to have_content 'Jade'
    expect(page).to have_content 'Alastair'
  end
end
