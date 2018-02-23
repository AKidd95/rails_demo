Given("the following articles exist") do |table|
  table.hashes.each do |article|
    Article.create!(article)
  end
end

When("I am on the landing page") do
  visit root_path
end
