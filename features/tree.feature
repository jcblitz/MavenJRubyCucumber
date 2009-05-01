Feature: Tree
  In order to have more robust Java software
  I want to use Cucumber against Java classes

  Scenario: Use java.util.TreeSet
    Given I have an empty set
    When I add hello
    And I add world
    Then the contents should be hello world

Scenario: A user has a name
	Given I have a firstname
	When I append a lastname
	Then fullname should be firstname lastname

Scenario: A user has a real name
		Given I have a Jared
		When I append a Blitzstein
		Then fullname should be Jared Blitzstein

Scenario: A user has a full name
		Given a user has a firstname of Jared
		And a lastname of Blitzstein
		Then their fullname should be Jared Blitzstein

Scenario: A user has a full name
		Given a user has a firstname of Jared
		And a lastname of Blitzstein
		Then their fullname should not be Micheal Zatko