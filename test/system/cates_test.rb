require "application_system_test_case"

class CatesTest < ApplicationSystemTestCase
  setup do
    @cate = cates(:one)
  end

  test "visiting the index" do
    visit cates_url
    assert_selector "h1", text: "Cates"
  end

  test "creating a Cate" do
    visit cates_url
    click_on "New Cate"

    fill_in "Productname", with: @cate.productname
    click_on "Create Cate"

    assert_text "Cate was successfully created"
    click_on "Back"
  end

  test "updating a Cate" do
    visit cates_url
    click_on "Edit", match: :first

    fill_in "Productname", with: @cate.productname
    click_on "Update Cate"

    assert_text "Cate was successfully updated"
    click_on "Back"
  end

  test "destroying a Cate" do
    visit cates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cate was successfully destroyed"
  end
end
