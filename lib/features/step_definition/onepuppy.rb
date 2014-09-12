Given(/^I am on the puppy adoption site$/) do
  @browser.goto"http://puppies.herokuapp.com"
end

And(/^I click the Adopt Me button$/) do
  @browser.button(:value=> "Adopt Me!").click
end

And(/^I click the Complete the Adoption button$/) do
  @browser.button(:value=> "Complete the Adoption").click
end

And(/^I click the Place Order button$/) do
  @browser.button(:value=> "Place Order").click
end

Then(/^I should see "([^"]*)"$/) do |expected|
  @browser.text.should include expected
end


And(/^I enter "([^"]*)" in the name field$/) do |name|
  @browser.text_field(:id=> "order_name").set(name)
end

And(/^I enter "([^"]*)" in the address field$/) do |address|
  @browser.text_field(:id=> "order_address").set(address)
end

And(/^I enter "([^"]*)" in the email field$/) do |email|
  @browser.text_field(:id=> "order_email").set(email)
end

When(/^I click the View Details button$/) do
  @browser.button(:value=> "View Details").click
end

And(/^I select "([^"]*)" from the pay with dropdown$/) do |pay_type|
  @browser.select_list(:id=> "order_pay_type").select(pay_type)
end

And(/^I click the third view Details of the button$/) do
  @browser.button(:value=> 'View Details', :index=>2).click
end
And(/^I click the View Details of the button$/) do
  @browser.button(:value=> 'View Details', :index=>0).click
end


=begin
def web
  @browser.goto"http://puppies.herokuapp.com"
end
def button(num)
  @browser.button(:value=> 'View Details', :index=>0+(num)).click
end
def button5
  @browser.button(:value => 'Adopt Another Puppy').click
end
def button2
  @browser.button(:value=> "Complete the Adoption").click
end
def button3
  @browser.button(:value=> "Adopt Me!").click
end
def nameof=(name)

  @browser.text_field(:id => "order_name").set(name)
end
def addressof=(address)
  @browser.text_field(:id => "order_address").set(address)
end
def emailof=(email)
  @browser.text_field(:id => "order_email").set(email)
end
def pay_typeof=(pay_type)
  @browser.select_list(:id => "order_pay_type").select(pay_type)
end
def order
  @browser.button(:value=> "Place Order").click
end
def thanks=(expected)
    @browser.text.should include expected
  end



Given(/^I am on the puppy adoption site$/) do
@web
end


When(/^I click the View Details button$/) do
  button 1
end


And(/^I click the Adopt Me button$/) do
 button3
end


And(/^I click the Complete the Adoption button$/) do
  button2
end


And(/^I enter "([^"]*)" in the name field$/) do |name|
  nameof =(name)
end

And(/^I enter "([^"]*)" in the address field$/) do |address|
  addressof =(address)
end


And(/^I enter "([^"]*)" in the email field$/) do |email|
  emailof=(email)
end


And(/^I select "([^"]*)" from the pay with dropdown$/) do |pay_type|
pay_typeof=(pay_type)
end


And(/^I click the Place Order button$/) do
  order
end


Then(/^I should see "([^"]*)"$/) do |expected|
  web
  thanks =(expected)
end

And(/^I click the Adopt Another Puppy button$/) do
   button5
end

And(/^I click the Second view Details of the button$/) do
  button 2
end

And(/^I click the third view Details of the button$/) do
  button 3
end
=end
