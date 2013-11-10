require 'spec_helper'

describe "acts/index" do
  before(:each) do
    assign(:acts, [
      stub_model(Act,
        :title => "Title"
      ),
      stub_model(Act,
        :title => "Title"
      )
    ])
  end

  it "renders a list of acts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
