module DeviseStepsHelper
  # overide should see sign out button helper from cucumber-futuregov gem
  # For some reason full xpath selector to find submit button was failing
  def should_see_sign_out_button
    within(:xpath, "//form[contains(@action,'sign_out')]") do
      expect(page).to have_selector("input[type=submit]")
    end
  end
end
World(DeviseStepsHelper)
