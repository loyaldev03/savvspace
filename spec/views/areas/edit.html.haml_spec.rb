require 'rails_helper'

RSpec.describe "areas/edit", type: :view do
  before(:each) do
    @area = assign(:area, FactoryGirl.build_stubbed(:area))
    @ambassadorship = assign(:ambassadorship, Ambassadorship.new)
  end

  it "renders the edit area form" do
    render

    assert_select "form[action=?][method=?]", area_path(@area), "post" do

      assert_select "input#area_name[name=?]", "area[name]"
    end
  end
end
