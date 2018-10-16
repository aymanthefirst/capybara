describe "Incorrect user details produces valid error" do

  context "It should respond with the correct error when incorrect details are put" do

    before(:all) do
      @bbc_page = BBCSite.new.bbc_sign_in_page
      @bbc_page.visit_page
    end

    it "should be the correct sign in page" do
      expect(@bbc_page.getURL).to eq("https://account.bbc.com/signin")
    end

    it "should check that a username has been inputted" do
      @bbc_page.fill_username("Ayman")
      expect(@bbc_page.print_name).to eq('Ayman')
    end

    it "should check that a password has been inputted" do
      @bbc_page.fill_password("Password")
      expect(@bbc_page.print_password).to eq('Password')
    end

    it "should produce an error when an invalid username and passowrd" do
      @bbc_page.fill_username("jimmy")
      @bbc_page.fill_password("neutron")
      @bbc_page.click_sign_in_button
      expect(@bbc_page.print_password_error.include?("Sorry")).to be true
    end


    it "should go to another page if sign in is succesful" do
      @bbc_page.fill_username("Ayman")
      @bbc_page.fill_password("password12")
      @bbc_page.click_sign_in_button
      expect(@bbc_page.getURL).not_to eq("https://account.bbc.com/signin")
    end

  end

end
