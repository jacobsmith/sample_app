require 'spec_helper'

describe "recipients/new" do
  before(:each) do
    assign(:recipient, stub_model(Recipient,
      :first_name => "MyString",
      :last_name => "MyString",
      :title => "MyString",
      :price => "9.99",
      :user_id => 1
    ).as_new_record)
  end

  it "renders new recipient form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", recipients_path, "post" do
      assert_select "input#recipient_first_name[name=?]", "recipient[first_name]"
      assert_select "input#recipient_last_name[name=?]", "recipient[last_name]"
      assert_select "input#recipient_title[name=?]", "recipient[title]"
      assert_select "input#recipient_price[name=?]", "recipient[price]"
      assert_select "input#recipient_user_id[name=?]", "recipient[user_id]"
    end
  end
end
