module PagesStepsHelper
  def navigate_to_page(name)
    within("nav") do
      find(:href, page_path(name)).click
    end
  end
end
World(PagesStepsHelper)

Given(/^I am on the homepage/) do
  visit root_path
end

When(/^I navigate to the (\w+) page$/) do |name|
  navigate_to_page(name)
end

Then(/^I should be on the (\w+) page$/) do |name|
  expect(page.current_path).to eql(page_path(name))
end

Then(/^I should see the sign in form$/) do
  should have_css('form.sign-in')
end

Then(/^I should not see the sign in form$/) do
  should_not have_css('form.sign-in')
end
