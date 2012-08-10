

module IntegrationHelpers
	#include ApplicationHelper
	def valid_login(user)
		visit log_in_path
		fill_in 'username', with: user.username
		fill_in 'password', with: user.password
		click_button "Log in"
		return user
	end

	def manager_login
		@user = FactoryGirl.create(:manager_user)
		return valid_login(@user)
	end

	def purchase_login
		@user = FactoryGirl.create(:purchase_user)
		return valid_login(@user)
	end

	def trading_login
		@user = FactoryGirl.create(:trading_user)
		return valid_login(@user)
	end

	def logout
		click_link 'Log Out'
	end

	#jquery autocomplete
 	def fill_in_autocomplete(selector, value)
    page.execute_script "$('input##{selector}').focus().val('#{value}').keydown()"
  	end

  def choose_autocomplete(text)
    find('ul.ui-autocomplete').has_content?(text)
    page.execute_script("$('.ui-menu-item:contains(\"#{text}\")').find('a').trigger('mouseenter').click()")
  end

	def fill_autocomplete(field, options = {})
		fill_in field, :with => options[:with]

		selector = "ul.ui-autocomplete a:contains('#{options[:select]}')"

		page.must_have_selector selector
		page.execute_script "$(\"#{selector}\").mouseenter().click()"

		# example
		# fill_autocomplete 'Person', :with => 'gabriel', :select => 'Gabriel Sobrinho'
	end



end