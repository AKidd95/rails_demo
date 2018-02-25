Given("the following articles exist") do |table|
  table.hashes.each do |article|
    Article.create!(article)
  end
end

When("I am on the landing page") do
  visit root_path
end

Then("I should see {string}") do |string|
  expect(page).to have_content string
end

Then("I should see page") do
  save_and_open_page # Write code here that turns the phrase above into concrete actions
end
