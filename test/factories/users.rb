# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
  	sequence(:email) {|n| "bluebear#{n}@yahoo.com"}
  	password "myPassw0rd"
  	password_confirmation "myPassw0rd"
  end
end

#userid needs to be applied at instance
FactoryGirl.define do
  factory :member do
    sequence(:name) {|n| "zhangfei#{n}"}
    dob "1992-08-12"
    sex "M"
    sequence(:mobile_phone) {|n| (13900001110 + n).to_s}
    sequence(:address){|n| "changninglu #{n} "}
    city "Shanghai"
  end
end


FactoryGirl.define do
  factory :recruiter do
    sequence(:name) {|n| "startup#{n}"}
    sequence(:phone) {|n| "021-5555-"+(1000+n).to_s}
    sequence(:mobile_phone) {|n| (13866660000 + n).to_s}
    sequence(:address) {|n| "nanjingxilu #{n}"}
    city "shanghai"
    website "www.websi.te"
    company_description "MyText"
  end
end


FactoryGirl.define do
  factory :admin do
    admin true
    name "admin_dude"
    mobile_phone "13588885555"
  end
end


