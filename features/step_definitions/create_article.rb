Given("I visit the {string} page") do |string|
   visit root_path
end

When("I click {string} link") do |string|
  page.click_link('new article')
end

When("I fill in {string} with {string}") do |string, string2|
  field_labeled("Title", disabled: true)
  fill_in(string, :with => string2, visible: false)
  #fill_in('Content', :with => 'Excited about learning a new framework')
end

When("I click {string} button") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should be on {string} page") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end
