require 'rails_helper'

feature "Account Creation" do
  scenario "allows quest to create account" do
    sign_up
    expect(page).to have_content I18n.t('devise.registrations.signed_up')
  end
end

