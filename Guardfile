# A sample Guardfile
# More info at https://github.com/guard/guard#readme

# guard 'spork', :minitest_env => { 'RAILS_ENV' => 'test' }, 
#               :cucumber_env => { 'RAILS_ENV' => 'test' }, 
#               :rspec_env => { 'RAILS_ENV' => 'test' } do
#   watch('config/application.rb')
#   watch('config/environment.rb')
#   watch('config/environments/test.rb')
#   watch(%r{^config/initializers/.+\.rb$})
#   watch('Gemfile')
#   watch('Gemfile.lock')
#   watch('spec/spec_helper.rb') { :rspec }
#   watch('test/test_helper.rb') { :test_unit }
#   watch(%r{features/support/}) { :cucumber }
# end

guard 'minitest' do
  # with Minitest::Unit
  watch(%r|^test/(.*)\/?test_(.*)\.rb|)
  watch(%r|^lib/(.*)([^/]+)\.rb|)     { |m| "test/#{m[1]}test_#{m[2]}.rb" }
  watch(%r|^test/test_helper\.rb|)    { "test" }

  # with Minitest::Spec
  # watch(%r|^spec/(.*)_spec\.rb|)
  # watch(%r|^lib/(.*)([^/]+)\.rb|)     { |m| "spec/#{m[1]}#{m[2]}_spec.rb" }
  # watch(%r|^spec/spec_helper\.rb|)    { "spec" }

  # Rails 3.2
  # watch(%r|^app/controllers/(.*)\.rb|) { |m| "test/controllers/#{m[1]}_test.rb" }
  watch(%r|^app/helpers/(.*)\.rb|)     { |m| "test/helpers/#{m[1]}_test.rb" }
  watch(%r|^app/models/(.*)\.rb|)      { |m| "test/models/#{m[1]}_test.rb" }  
  # rolled own controller test including integration
  watch(%r|^app/controllers/(.*)\.rb|) do |m| 
    ["test/routing/#{m[1]}_routing_spec.rb",
     "test/integration/#{m[1]}_test.rb" , 
     "test/controllers/#{m[1]}_test.rb"]
  end
  # view test
  watch(%r{^app/views/(.+)/}) do |m|
    ["test/integration/#{m[1]}_test.rb" , 
     "test/controllers/#{m[1]}_test.rb"
    ]
  end

  # Rails
  # watch(%r|^app/controllers/(.*)\.rb|) { |m| "test/integration/#{m[1]}_test.rb" }
  # watch(%r|^app/helpers/(.*)\.rb|)     { |m| "test/helpers/#{m[1]}_test.rb" }
  # watch(%r|^app/models/(.*)\.rb|)      { |m| "test/unit/#{m[1]}_test.rb" }  

  ################################
  # excerpt from hartl's book (based on rspec)
  ################################
  #watch(%r{^app/controllers/(.+)_(controller)\.rb$})  do |m|
  #  ["test/routing/#{m[1]}_routing_spec.rb",
  #   "test/#{m[2]}s/#{m[1]}_#{m[2]}_spec.rb",
  #   "test/integration/#{m[1]}_test.rb",
  #   (m[1][/_pages/] ? "test/requests/#{m[1]}_test.rb" : 
  #                     "test/requests/#{m[1].singularize}_pages_test.rb")]
  #end
  #watch(%r{^app/views/(.+)/}) do |m|
  #  (m[1][/_pages/] ? "spec/requests/#{m[1]}_spec.rb" : 
  #                     "spec/requests/#{m[1].singularize}_pages_spec.rb")
  #end
  #################################

end