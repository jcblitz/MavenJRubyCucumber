Feature: Product
  In order to sell items to a customer
  The webstore needs to offer products

Scenario: I have a valid product, it should have values
    Given a product exists named cow
    When I view the name
    Then the name should be cow
