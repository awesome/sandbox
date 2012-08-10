require 'test_helper'

describe User do

	before do
		@user = Factory.create(:user)
	end

	it 'must respond to email and password and be valid' do
		@user.must_respond_to :email
		@user.must_respond_to :password
		@user.valid?.must_equal true
	end



end