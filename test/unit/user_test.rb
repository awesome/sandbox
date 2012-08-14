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

	describe "member login" do
		before do
			@member_user = Factory.create(:user)
			@member = Factory.create(:member, :user => @member_user)

		end

		it 'member.user must be valid and must reference each other' do
			@member_user.valid?.must_equal true
			@member.user.email.must_equal @member_user.email
			@member.name.must_equal @member_user.member.name

		end
	end

	describe "recruiter login" do
		before do
			@recruiter_user = Factory.create(:user)
			@recruiter = Factory.create(:recruiter, :user => @recruiter_user)

		end

		it 'recruiter.user must be valid and must reference each other' do
			@recruiter_user.valid?.must_equal true
			@recruiter.user.email.must_equal @recruiter_user.email
			@recruiter.name.must_equal @recruiter_user.recruiter.name

		end
	end



end