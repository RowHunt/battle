feature 'Attack opponent' do
  scenario 'Player can attack opponent & receive confirmation' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Rowan attacked Shiloh'
  end

  scenario 'reduce opponent HP by 10' do
    sign_in_and_play
    click_button 'Attack'
    click_link 'OK'
    expect(page).not_to have_content 'Shiloh: 60HP'
    expect(page).to have_content 'Shiloh: 50HP'
  end
end