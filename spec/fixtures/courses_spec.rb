require 'rails_helper'
require 'capybara/rspec'
require 'spec_helper'
require 'capybara/rails'

RSpec.describe "Courses", :type => :feature do
  describe "GET /courses" do
    it "works! (now write some real specs)" do
      get courses_path
      expect(response.status).to be(200)
    end
  end
  #page.should have_content("Sign Up")

  #it "renders the index template" do
  #  get :courses_path
  #  #expect(response).to render_template("index")
  #  puts response
  #end

    it "displays the user's username after successful login" do
      #user = User.create!(:username => "jdoe", :password => "secret")
      get new_course_path

      expect(response.status).to be(200)

      #assert_select "form.login" do
      #  assert_select "input[name=?]", "username"
      #  assert_select "input[name=?]", "password"
      #  assert_select "input[type=?]", "submit"
      #end

      #post "/login", :username => "jdoe", :password => "secret"
      #assert_select ".header .username", :text => "jdoe"
    end

     it "create" do
       post "courses", "course[name]" => "aa"
       #expect(response.status).to be(200)
     end

    it "should be successful" do
      visit '/'
      response.should be_successful
    end

  #it "index" do
  #  visit courses_path
  #  expect(page).to have_selector(".header .username", :text => "jdoe")
  #  #expect(response.status).to be(200)
  #end

end
