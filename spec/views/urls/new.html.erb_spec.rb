require 'rails_helper'

RSpec.describe "urls/new.html.erb", type: :view do
  it "displays the form without error" do
    assign :url, Url.new
    render

    expect(rendered).to have_css("form")
    expect(rendered).to have_content("Type your URL here:")
  end
end