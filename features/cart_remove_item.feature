Feature: Cart Remove
  In order to purchase indented items
  A customer can remove unwanted items from their cart

Scenario: Removing one item
    Given a cart
    And contains the following cart items:
      | product_id | price | quantity |
      | 1     | 45.0 | 1 |
      | 2     | 40.0 | 1 |
      | 3     | 24.45 | 1 |
    When the customer removes the item 1
    Then the cart size should be 2
