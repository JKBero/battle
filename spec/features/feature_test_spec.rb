describe "homepage", type: :feature do
  it "returns something" do
    visit '/'
    expect(page).to have_content 'I want to rip your heart out! Welcome to Battle!'
  end
end
