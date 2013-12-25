require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  
  context "when authenticated"  do
    it "displays up to the 10 most recent surveys the user participated in" do

    end
  end

  context "when not authenticated" do
    it "displays the welcome page" do
      assert home_url
    end
  end
end
