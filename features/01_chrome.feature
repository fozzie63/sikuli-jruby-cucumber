###################################
# Feature File for Chrome
# Written by Richard Foster
###################################

Feature: Open Chrome Browser and goto google.com (original I know!)

Scenario: Goto Google websites
    Given I click on "chrome_dock_icon.png"
    When I click on "chrome_url_textfield.png"
    And I type "www.google.com"
    And I use RETURN
    Then I should see "chrome_google.com_search_button.png"