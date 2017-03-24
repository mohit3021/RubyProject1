require "capybara"
require "capybara/cucumber"
require "rspec"
require "capybara/dsl"

include RSpec::Matchers


@timeout = 50
Capybara.configure do |Capybara|
  

  Capybara.register_driver :selenim_ff do |app|
    
    Capybara::Selenium::Driver.new(app, :browser => :firefox)
    
  end
  
  Capybara.register_driver :selenim_ie do |app|
      Capybara::Selenium::Driver.new(app, :browser => :ie)
      
    end
    
    Capybara.default_driver = :selenim_ie
    Capybara.run_server = false
  
end

RSpec.configure do |config|
  
end
