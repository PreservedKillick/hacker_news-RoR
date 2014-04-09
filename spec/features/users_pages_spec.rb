require 'spec_helper'

describe User do

  context "creating user" do
    it "creates a new user" do
      visit '/users/new'
      fill_in "Name", :with => 'Raj'
      click_button "Create User"
      expect(page).to have_content 'Raj'
    end
  end

  context "editing user" do
    before :each do
      @test_user = FactoryGirl.create(:user)
    end
    it "edits an existing user" do
      visit "/users/#{@test_user.id}/edit"
      fill_in "Name", :with => 'Lamp'
      click_button "Update User"
      expect(page).to have_content 'Lamp'
    end
  end



end
