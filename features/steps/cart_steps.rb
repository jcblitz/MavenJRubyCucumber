include_class 'net.blitzstein.learning.easyb.cartservice.domain.Product'
include_class 'net.blitzstein.learning.easyb.cartservice.domain.Cart'
include_class 'net.blitzstein.learning.easyb.cartservice.domain.CartItem'
include_class 'java.lang.Long'

Given /^I have an empty cart$/ do
  @cart = Cart.new
end

When /^I add product (.*) for (.*) dollars$/ do |product, price|
  cart_item = CartItem.new
  cart_item.product_id = Long.new(product.to_s)
  cart_item.quantity = 1
  cart_item.price = price.to_f

  @cart.add_to_cart(cart_item)
end

Then /^the subtotal should be (.*)$/ do |subtotal|
  @cart.subtotal.to_s.should == subtotal.to_s
end

Then /^the cart contains (\d) items$/ do |size|
  @cart.products.size.should == size.to_i
end
