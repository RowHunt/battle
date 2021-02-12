feature 'Show hit points' do
  scenario 'Shows the opponents points to the other player' do
    sign_in_and_play
    expect(page).to have_content 'Shiloh: 60HP'
  end
end