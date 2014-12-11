require 'rails_helper'


describe " courses" do

  before :each do
    @course = Course.new
    Course.set_score(1)
  end

  it "test" do
    expect(@course.test).to eq(1)
  end

  it "test2" do
    expect(@course.test).to eq(1)
  end

end