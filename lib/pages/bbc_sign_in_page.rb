require "capybara"

class BBCSignInPage
  SIGN_IN_PAGE_URL = "https://account.bbc.com/signin"


  def initialize
      Capybara.register_driver :chrome do |app|
      Capybara::Selenium::Driver.new(app, :browser => :chrome)
    end
    @session = Capybara::Session.new(:chrome)
  end

  def visit_page
    @session.visit(SIGN_IN_PAGE_URL)
  end

  def fill_username(name)
    @session.fill_in("name", with: name)
  end

  def fill_password(name)
    @session.fill_in("password", with: name)
  end

  def print_name
    @session.find('#user-identifier-input').value
  end

  def print_password
    @session.find('#password-input').value
  end

  def print_password_error
    @session.find('#form-message-password').text
  end

  def click_sign_in_button
    @session.find('#submit-button').click
  end

  def getURL
    @session.current_url
  end

end
