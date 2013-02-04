require 'spec_helper'

describe "pages/index" do
  before(:each) do
    assign(:pages, [
      stub_model(Page,
        :title => "Title",
        :content => "MyText",
        :summary => "MyText",
        :permalink => "Permalink"
      ),
      stub_model(Page,
        :title => "Title",
        :content => "MyText",
        :summary => "MyText",
        :permalink => "Permalink"
      )
    ])
  end

  it "renders a list of pages" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Permalink".to_s, :count => 2
  end
end
