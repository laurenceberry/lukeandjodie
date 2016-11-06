module UserStepsHelper
  def create_user(attrs={})
    User.create!(
      attrs.reverse_merge(
        email: "foo@bar.baz",
        password: "shitpassword"
      )
    )
  end
end
World(UserStepsHelper)

Given(/^I am a user$/) do
  @i = create_user
end
