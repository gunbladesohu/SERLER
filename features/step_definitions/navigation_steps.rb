When /^I am on the index page$/ do
  visit root_path
end

When /^I am on the search page$/ do
  # TODO: remove hard-coding
  visit "/search"
end
