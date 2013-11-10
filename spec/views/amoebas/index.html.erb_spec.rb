require 'spec_helper'

describe "amoebas/index" do
  before(:each) do
    assign(:amoebas, [
      stub_model(Amoeba,
        :name => "Name",
        :talent => nil,
        :generation => 1
      ),
      stub_model(Amoeba,
        :name => "Name",
        :talent => nil,
        :generation => 1
      )
    ])
  end

  it "renders a list of amoebas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
