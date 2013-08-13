require 'spec_helper'

describe "campaigns/index" do
  before(:each) do
    assign(:campaigns, [
      stub_model(Campaign,
        :title => "Title",
        :description => "MyText",
        :user_id => 1,
        :recipient_id => 2
      ),
      stub_model(Campaign,
        :title => "Title",
        :description => "MyText",
        :user_id => 1,
        :recipient_id => 2
      )
    ])
  end

  it "renders a list of campaigns" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
