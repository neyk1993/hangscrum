Given(/^que abri el juego$/) do
    visit '/'
end

Then(/^debo ver "([^"]*)"$/) do |texto|
  expect(page.body).to match /#{texto}/m
end


Given(/^inicie un nuevo juego$/) do
  visit '/'
  click_button('Iniciar')
end
