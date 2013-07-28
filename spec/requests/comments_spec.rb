require 'spec_helper'

describe "Comments" do

  describe "creating a new comment" do
    let!(:post) { FactoryGirl.create(:post) }
    it "displays the correct post on the page" do
      visit new_post_comment_path(post)
      fill_in "Body", with: "some fake body parts"
      click_button "Create Comment"
      page.should have_content "some fake body parts"
      page.should have_content "Comment was created successfully"
    end
  end

end