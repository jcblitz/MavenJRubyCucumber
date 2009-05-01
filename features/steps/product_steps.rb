require 'spec'
include_class 'net.blitzstein.learning.easyb.cartservice.domain.Product'
include_class 'java.lang.String'

Given /^a product exists named (.*)/ do |n|
  @product = Product.new(1, n.to_s, "test")

end

When /^I view the name$/ do
  # Do nothing
end

Then /^the name should be (.*)$/ do |v|
  @product.getName.to_s.should == v
end