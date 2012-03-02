require 'spec_helper'

describe "contacts/edit" do
  before(:each) do
    @contact = assign(:contact, stub_model(Contact,
      :name => "MyString",
      :title => "MyString",
      :company => "MyString",
      :phone => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit contact form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => contacts_path(@contact), :method => "post" do
      assert_select "input#contact_name", :name => "contact[name]"
      assert_select "input#contact_title", :name => "contact[title]"
      assert_select "input#contact_company", :name => "contact[company]"
      assert_select "input#contact_phone", :name => "contact[phone]"
      assert_select "input#contact_email", :name => "contact[email]"
    end
  end
end
