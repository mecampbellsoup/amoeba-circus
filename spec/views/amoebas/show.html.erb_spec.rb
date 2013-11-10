require 'spec_helper'

describe "amoebas/show" do
  before(:each) do
    @amoeba = assign(:amoeba, stub_model(Amoeba,
      :name => "Name",
      :talent => nil,
      :generation => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(//)
    rendered.should match(/1/)
  end
end
