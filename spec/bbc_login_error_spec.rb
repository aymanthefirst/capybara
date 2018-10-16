# describe "Incorrect user details produces valid error" do
#
#   context "It should respond with the correct error when incorrect details are put" do
#
#     before(:all) do
#       @bbc_page = BBCSite.new.bbc_homepage
#       @bbc_page.visit_homepage
#     end
#
#
#     # it "should get from home page to sign in page" do
#     #   @bbc_page.click_sign_in_link
#     #   expect(@bbc_page.current_url).to eq("https://account.bbc.com/signin")
#     # end
#
#     it "Should produce an error when inputting an incorrect password for a valid account" do
#       @bbc_page.click_sign_in_link
#     end
#
#
#
#   end
#
# end
