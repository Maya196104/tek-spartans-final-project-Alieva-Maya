@Smoke @Regression
Feature: Accounts Test
Background: Login to account and setups

  Given open browser and navigate to retail app
  Then click on login button
  Then enter username "supervisor" and password "tek_supervisor"
  Then click on sign in button
  Then click on Accounts button



  @AccountsScenario1
  Scenario: Login with Customer Service Portal Credentials
    Then validate Primary Accounts title is exist
    Then close browser

  @AccountsScenario2
  Scenario: Validate Primary Account Table
    When change item per page to "5"
    Then validate table row count to be 5
    When change item per page to "10"
    Then validate table row count to be 10
    When change item per page to "25"
    Then validate table row count to be 25
    When change item per page to "50"
    Then validate table row count to be 50
    Then close browser

