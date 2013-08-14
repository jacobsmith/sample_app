require 'spec_helper'

describe "recipients/index" do
  before(:each) do
    assign(:recipients, [
      stub_model(Recipient,
        :first_name => "First Name",
        :last_name => "Last Name",
        :title => "Title",
        :price => "9.99",
        :user_id => 1
      ),
      stub_model(Recipient,
        :first_name => "First Name",
        :last_name => "Last Name",
        :title => "Title",
        :price => "9.99",
        :user_id => 1
      )
    ])
  end

  it "renders a list of recipients" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
