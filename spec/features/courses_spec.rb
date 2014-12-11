require 'rails_helper'
require 'capybara/rspec'
require 'spec_helper'
require 'capybara/rails'

describe " courses" do

  it "courses list work" do
    visit courses_path
    expect(page).to have_content 'courses'
  end

  it "course create" do
    visit '/courses/new'
    #within("#session") do
      fill_in 'course[name]', :with => 'aaa'
    #end
    click_button 'Create Course'
    expect(page).to have_content 'successfully'
  end

end
