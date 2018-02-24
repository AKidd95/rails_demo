When("I click on {string}") do |link_text|
  click_link_or_button link_text # Write code here that turns the phrase above into concrete actions
end

When("I fill in {string} with {string}") do |input, value|
  fill_in(input, :with => value) # Write code here that turns the phrase above into concrete actions
end

When("I click {string}") do |string|
  click_link_or_button(string)
end

Then("I should be on the {string} page") do |article_title|
  article = Articles.find_by(title: article_title)
  expect(page.current_path).to eq article_path(article)
end

Then("i should see {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end
