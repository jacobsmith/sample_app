require 'spec_helper'

describe "campaigns/new" do
  before(:each) do
    assign(:campaign, stub_model(Campaign,
      :title => "MyString",
      :description => "MyText",
      :user_id => 1,
      :recipient_id => 1
    ).as_new_record)
  end

  it "renders new campaign form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", campaigns_path, "post" do
      assert_select "input#campaign_title[name=?]", "campaign[title]"
      assert_select "textarea#campaign_description[name=?]", "campaign[description]"
      assert_select "input#campaign_user_id[name=?]", "campaign[user_id]"
      assert_select "input#campaign_recipient_id[name=?]", "campaign[recipient_id]"
    end
  end
end
