Feature: Verify login api


Scenario: Verify login api for valid credentials
Given I am a 'valid' user
When I try to login with user name id and password
Then I should get 200 response
And I should get the token in the response


Scenario: Verify login api for invalid user
Given I am a 'invalid' user
When I try to login with user name id and password
Then I should get 401 response