require 'spec_helper'

describe "Creating a new post" do
  it "has the correct content on the page" do
    visit new_post_path
    fill_in "Title", with: "Some Fake Title"
    fill_in "Body", with: "Some fake body of text that would normally be a post"
    click_button "Create Post"
    page.should have_content Post.last.title
  end
end