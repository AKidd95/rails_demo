When("I click on {string}") do |link_text|
  click_link_or_button link_text # Write code here that turns the phrase above into concrete actions
end

When("I fill in {string} with {string}") do |string, string2|
  pending # Write code here that turns the phrase above into concrete actions
end

When("I click {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should be on the {string} page") do |article_title|
  article = Articles.find_by(title: article_title)
  expect(page.current_path).to eq article_path(article)
end

Then("i should see {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end
