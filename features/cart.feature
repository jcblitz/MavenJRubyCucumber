Feature: Cart
  In order to sell multiple products
  A customer can add products to a cart

Scenario: Adding two products to the cart
    Given I have an empty cart
    When I add product 1 for 10 dollars
    And I add product 2 for 24 dollars
    Then the subtotal should be 34.0
    And the cart contains 2 items

Scenario: Adding two products to the cart
    Given I have an empty cart
    When I add product 3 for 50 dollars
    And I add product 4 for 25 dollars
    Then the subtotal should be 75.0

Scenario: Adding three products to the cart
    Given I have an empty cart
    When I add product 3 for 50 dollars
    And I add product 4 for 25 dollars
    And I add product 5 for 25 dollars
    Then the subtotal should be 100.0
    And the cart contains 3 items