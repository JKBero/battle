def sign_in_and_play
  visit '/'
  fill_in 'Player 1', with: 'Jade'
  fill_in 'Player 2', with: 'Alastair'
  click_button 'FIGHT!'
end
