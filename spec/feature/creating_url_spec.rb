require 'rails_helper'
feature "creating url" do
  background do
    Url.create(:long_url => 'http://test.com')
  end

  scenario "Making new url" do
    visit '/urls/'
    click_link "Shorten a Url!"
  end
end