require 'rails_helper'

RSpec.describe "courses/index", :type => :view do
  before(:each) do
    assign(:courses, [
      Course.create!(
        :name => ""
      ),
      Course.create!(
        :name => ""
      )
    ])
  end

  it "renders a list of courses" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
