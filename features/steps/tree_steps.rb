require 'spec'
include_class 'java.util.TreeSet'
include_class 'java.lang.String'

Given /I have an empty set/ do
  @set = TreeSet.new
end

When /I add (\w+)/ do |s|
  @set.add(s)
end

Then /the contents should be (.*)/ do |s|
  @set.to_a.join(" ").should == s
end


Given /I have a (.*)/ do |n|
  @string = String.new(n)
end


When /I append a (\w+)/ do |s|
  @string = @string.to_s + s.to_s
end


Then /^fullname should be (.*)$/ do |n|
  n.to_s.should == n.to_s
end

Given /^a user has a firstname of (.*)$/ do |fn|
  @name = fn.to_s
end

Given /^a lastname of (.*)$/ do |ln|
  @name = @name.to_s + " " + ln
end

Then /^their fullname should be (.*)$/ do |full_name|
  @name.to_s.should == full_name
end

Then /^their fullname should not be (.*)$/ do |full_name|
  @name.to_s.should_not == full_name
end
