require "capybara"
require_relative "pages/bbc_homepage.rb"
require_relative "pages/bbc_sign_in_page.rb"
require_relative "pages/registration_page.rb"

class BBCSite

  def bbc_homepage
    BBCHomepage.new
  end

  def bbc_sign_in_page
    BBCSignInPage.new
  end

  def registration
    RegistrationPage.new
  end
end

@bbc_page = BBCSite.new.registration
@bbc_page.visit_page

@bbc_page.fill_email("jimmyNeutron@hotmail.com")
