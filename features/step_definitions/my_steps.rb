Given(/^que abri el juego$/) do
    visit '/'
end

Then(/^debo ver "([^"]*)"$/) do |texto|
  expect(page.body).to match /#{texto}/m
end

Then(/^debo ver los botones "([^"]*)"$/) do |value|
  expect(page).to have_xpath("//input[@value=\"#{value}\"]")
end

Given(/^inicie un nuevo juego$/) do
  step "que abri el juego"
  click_button('Iniciar')
end
