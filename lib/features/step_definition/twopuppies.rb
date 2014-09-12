And(/^I click the Adopt Another Puppy button$/) do
  @browser.button(:value => 'Adopt Another Puppy').click
end

And(/^I click the Second view Details of the button$/) do
  @browser.button(:value=> 'View Details', :index=>1).click
end
