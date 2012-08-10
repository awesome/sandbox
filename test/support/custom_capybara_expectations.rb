# test/support/custom_capybara_expectations.rb
#
# now we can do this:
# page.must_have_flash_message('Successfully created')
# and
# page.wont_have_flash_message('There were errors')

class Capybara::Session
  def has_flash_message?(message)
    within '#flash' do
      has_content? message
    end
  end
end
# Then create a new CapybaraMiniTestSpec::Matcher.
CapybaraMiniTestSpec::Matcher.new(:has_flash_message?)

# Capybara::Session.send :include, CustomCapybaraExpectations
# CustomCapybaraExpectations.public_instance_methods(false).each do |name|
#   CapybaraMiniTestSpec::Matcher.new(name)
# end
