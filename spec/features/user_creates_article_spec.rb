require 'rails_helper'

feature "Article Creation" do
  before(:each) do
    sign_up
  end
  scenario "allows user to visit article page" do
    visit new_article_path
    expect(page).to have_content I18n.t('articles.new_article')
  end
  scenario "allows user to create new article" do
    visit new_article_path
    fill_in :article_title, :with => "something"
    fill_in :article_text, :with => "something"
    click_button 'Save article'
    expect(page).to have_content I18n.t('articles.create_article')
  end
end