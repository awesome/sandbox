# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
  	sequence(:email) {|n| "bluebear#{n}@yahoo.com"}
  	password "myPassw0rd"
  	password_confirmation "myPassw0rd"
  end
end



# #FactoryGirl definitions
# FactoryGirl.define do

# 	#factory user class
# 	factory :user, aliases: [:approver] do
# 		username "this_user"
# 		password "my_passw0rd"
# 		password_confirmation "my_passw0rd"
# 	end

# 	factory :manager_user, class: User do
# 		username "manager_user"
# 		password "my_passw0rd"
# 		password_confirmation "my_passw0rd"
# 		roles_mask "31"
# 	end

# 	factory :trading_user, class: User do
# 		username "ivy"
# 		password "Password123"
# 		password_confirmation "Password123"
# 		roles_mask "14"
# 	end

# 	factory :purchase_user, class: User do
# 		username "grace"
# 		password "Password123"
# 		password_confirmation "Password123"
# 		roles_mask "2"
# 	end

# 	# basic supplier
# 	factory :supplier do
# 		code "SUPL"
# 		name "TheSupplier"
# 	end

# 	# basic client
# 	factory :client do
# 		code "CUST"
# 		name "TheCustomer"
# 	end

# 	# basic company
# 	factory :company do
# 		code "ELE"
# 		name "Elekeen"
# 	end

# 	# article
# 	# instantiate associations: 
# 	# Factory.create(:article, :supplier => @supplier, 
# 	# 					:user => @user, :approver => @approver)
# 	factory :article do
# 		# validates_uniqueness_of :EK_Art
# 		# validates_presence_of :S_Item, :supplier_id, :S_finishing
# 		sequence(:EK_Art) {|n| "EK-#{n}"}
# 		sequence(:S_Item) {|n| "Item-#{n}"}
# 		S_finishing "s finishing"
# 		confirmed true
# 	end

# 	#sales contract
# 	# Factory.create(:sales_contract, :client => @client, 
# 	#	:company => @company, :approver => @approver, :user => @user)
# 	factory :sales_contract do
# 		sequence(:contract_no) {|n| "SC-#{n}"}
# 		sequence(:issue_date) {|n| (n+1).days.ago}
# 		sequence(:delivery_date) {|n| (n-30).days.ago}
# 		terms "cif shanghai"
# 		payment "100% L/C"
# 		shipping_marks "shipping marks example"
# 		remarks "some remarks \n like this \n like this2"
# 		currency "USD"
# 		unit "YD"
# 		amount 0
# 		qty 0
# 	end

# 	#sales order
# 	# Factory.create(:sales_order, :sales_contract => @sc, :saleable => @article)
# 	factory :sales_order do
# 		unit "YD"
# 		currency "USD"
# 		amount 0
# 		qty 0
# 		price 0
# 	end

# 	#sell quote
# 	# Factory.create(:sell_quote, :article => @article, :client => @client,
# 	# 				:user => @user, :approver => @approver, :offer_sheet => @os)
# 	factory :sell_quote do
# 		currency "USD"
# 		unit "YD"
# 		terms "CIF SHANGHAI"
# 		moq	"1000YD/BULK BY SEA"
# 		sequence(:quoteDate) {|n| (n+1).days.ago}
# 		sequence(:expiry) {|n| (n-30).days.ago}
# 		season "FW13"
# 		price 2.22
# 	end

# end

