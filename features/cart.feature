Feature: Cart
  In order to sell multiple products
  A customer can add products to a cart

Scenario: Adding two products to the cart
    Given I have an empty set
    When I add hello
    And I add world
    Then the contents should be hello world