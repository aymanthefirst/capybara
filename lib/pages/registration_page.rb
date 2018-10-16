require "capybara"

class RegistrationPage
  SIGN_IN_PAGE_URL = "https://account.bbc.com/register/details?ab=o18&action=register&context=homepage&nonce=hUiyL0UP-jnCR48siJ3RxduRGrdAeq5l2jgw&ptrt=https%3A%2F%2Fwww.bbc.co.uk%2F&userOrigin=homepage&dateOfBirthDay=23&dateOfBirthMonth=10&dateOfBirthYear=1990"


  def initialize
      Capybara.register_driver :chrome do |app|
      Capybara::Selenium::Driver.new(app, :browser => :chrome)
    end
    @session = Capybara::Session.new(:chrome)
  end

  def visit_page
    @session.visit(SIGN_IN_PAGE_URL)
  end

  def fill_email(email)
    @session.fill_in("#user-identifier-input", with: email)
  end

end
