require 'spec_helper'

describe "Posts" do

  describe "Creating a new post" do
    it "has the correct content on the page after creating a post" do
      visit new_post_path
      fill_in "Title", with: "Some Fake Title"
      fill_in "Body", with: "Some fake body of text that would normally be a post"
      click_button "Create Post"
      page.should have_content "Some Fake Title"
      page.should have_content "Post was created successfully"
    end
  end

  describe "Editing an existing post" do
    let!(:post) { FactoryGirl.create(:post) }
    it "should have the updated content on the page after editing" do
      visit edit_post_path(post)
      fill_in "Title", with: "Some New Title"
      click_button "Update Post"
      post.reload
      page.should have_content post.title
      page.should have_content "Post was updated successfully"
    end
  end

  describe "Destroying an existing post" do
    let!(:post) { FactoryGirl.create(:post) }
    it "should delete the post" do
      visit edit_post_path(post)
      click_link "Delete Post"
      page.should have_content "Post was deleted successfully"
    end
  end

  describe "Visiting the all posts page" do
    10.times { FactoryGirl.create(:post) }
    it "should have all the posts" do
      visit posts_path
      Post.all.each do |post|
        page.should have_content post.title
      end
    end
  end
end