feature 'Start fight' do
  scenario 'Players submit names through form, names shown on screen' do
    sign_in_and_play
    expect(page).to have_content 'Rowan vs. Shiloh'
  end
end