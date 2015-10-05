When (/^I am on the index page$/) do
  visit root_path
end

When (/^I am on the search page$/) do
  # TODO: remove hard-coding
  visit "/search"
end

Given(/^I visit saved search results page$/) do
  visit url_for(:controller => :saved_search_results, :action => :index)
end

Given(/^I visit saved search queries page$/) do
  visit url_for(:controller => :saved_search_queries, :action => :index)
end

When(/^I click on "(.*?)"$/) do |arg1|
  click_on arg1
end
