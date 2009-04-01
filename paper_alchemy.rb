# paper_alchemy.rb
# Base Rails template for morphing data objects into ink on paper

plugin 'rspec', 
  :git => 'git://github.com/dchelimsky/rspec.git'
plugin 'rspec-rails', 
  :git => 'git://github.com/dchelimsky/rspec-rails.git'
plugin 'restful-authentication', 
  :git => 'git://github.com/technoweenie/restful-authentication.git'
plugin 'exception_notifier', 
  :git => 'git://github.com/rails/exception_notification.git'
plugin 'attachment_fu', 
  :git => 'git://github.com/technoweenie/attachment_fu.git'
plugin 'prawnto', 
  :git => 'git://github.com/thorny-sun/prawnto.git'
plugin 'newrelic_rpm',
  :svn => 'http://newrelic.rubyforge.org/svn/newrelic_rpm'

gem 'cucumber'
gem 'prawn'
gem 'newrelic_rpm'

rake("gems:install", :sudo => true)

generate("authenticated", "user session")
generate("rspec")
generate("features")