Feature:
  As a Blogger
  In order to talk about my thoughts on an article
  I would like to be able to comment

    Background:
      Given the following articles exists
        | title                | content                          |
        | A breaking news item | Some really breaking action      |
        | Learn Rails 5        | Build awesome rails applications |

    Scenario: User adds comment to an articles
      When I visit the site
      And I click on "Learn Rails 5"
      And I fill in "Comment" with "Really bad read"
      And I fill in "Email" with "aiden.jubelin@gmail.com"
      And I click "Create Comment"
      Then I should be on the "Learn Rails 5" page
      And I should see "Really bad read"
      And I should see "aiden.jubelin@gmail.com"
