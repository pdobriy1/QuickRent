Feature: display welcome page
  As a new user 
  I want to get onto the site 
  so that I can look at the site and LOGIN/SIGNUP.
  
Scenario: LOGIN
  Given I am on welcome page 
  When  I follow "LOGIN"
  Then I should be on LOGIN
  

Scenario: SIGNUP
  Given I am on welcome page
  When  I follow "SIGNUP"
  Then I should be on SIGNUP
