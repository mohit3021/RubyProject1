Feature: As a consumer, i want to search on youtube 

	 
    Scenario: Search somthing on youtube
        Given I am on "https//www.youtube.com"
        When I search for "capybara"
        Then i should see "capybara" in result