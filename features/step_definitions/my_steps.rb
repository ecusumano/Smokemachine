
Given(/^voy a la pantalla principal$/) do
  visit '/'
end

Then(/^veo "(.*?)"$/) do |texto|
  last_response.body.should =~ /#{texto}/m
end


Given(/^inicio el juego$/) do
  click_button("Iniciar Juego")
end


Given(/^para la pregunta "(.*?)"$/) do |pregunta|
  last_response.body.should =~ /#{pregunta}/m
end

When(/^selecciono "(.*?)"$/) do |respuesta|
  choose "Cinco"
	click_button("Contestar")
end
