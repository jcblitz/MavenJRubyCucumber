require 'factory_girl'

Given /^a cart$/ do
  @cart = Cart.new
end

Given /^contains the following cart items:$/ do |table|
  table.hashes.each do |hash|
    Factory(:cart_item, hash)
  end
end

When /^the customer removes the item (\d)$/ do
  pending
end

Then /^the cart size should be (\d)$/ do |size|
  @cart.products.size.should == size
end
