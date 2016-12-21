Given(/^voy a la pantalla$/) do
  visit '/'
end

Then(/^veo "(.*?)"$/) do |titulo|
  last_response.body.should =~ /#{"Preguntados"}/m
end

