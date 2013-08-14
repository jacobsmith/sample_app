require 'spec_helper'

describe "recipients/show" do
  before(:each) do
    @recipient = assign(:recipient, stub_model(Recipient,
      :first_name => "First Name",
      :last_name => "Last Name",
      :title => "Title",
      :price => "9.99",
      :user_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/First Name/)
    rendered.should match(/Last Name/)
    rendered.should match(/Title/)
    rendered.should match(/9.99/)
    rendered.should match(/1/)
  end
end
