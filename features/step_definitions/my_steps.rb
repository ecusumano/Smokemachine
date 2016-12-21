Given(/^voy a la pantalla$/) do
  visit '/'
end

Then(/^veo "(.*?)"$/) do |titulo|
  last_response.body.should =~ /#{titulo}/m
end

Given(/^selecciono opcion "(.*?)"$/) do |respuesta|
	choose "Cinco"
	click_button("Contestar")
end




