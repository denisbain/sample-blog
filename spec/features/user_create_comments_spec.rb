require 'rails_helper'

feature "Article Creation" do
  before(:each) do
    sign_up
  end
  scenario "allows user to visit unique article page" do
    visit 	"/articles/:id(.:format)"
    expect(page).to have_content "Add comment"
  end

end