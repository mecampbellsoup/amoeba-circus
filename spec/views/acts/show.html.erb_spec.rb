require 'spec_helper'

describe "acts/show" do
  before(:each) do
    @act = assign(:act, stub_model(Act,
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
  end
end
