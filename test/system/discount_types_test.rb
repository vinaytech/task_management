require "application_system_test_case"

class DiscountTypesTest < ApplicationSystemTestCase
  setup do
    @discount_type = discount_types(:one)
  end

  test "visiting the index" do
    visit discount_types_url
    assert_selector "h1", text: "Discount Types"
  end

  test "creating a Discount type" do
    visit discount_types_url
    click_on "New Discount Type"

    fill_in "Name", with: @discount_type.name
    check "Status" if @discount_type.status
    click_on "Create Discount type"

    assert_text "Discount type was successfully created"
    click_on "Back"
  end

  test "updating a Discount type" do
    visit discount_types_url
    click_on "Edit", match: :first

    fill_in "Name", with: @discount_type.name
    check "Status" if @discount_type.status
    click_on "Update Discount type"

    assert_text "Discount type was successfully updated"
    click_on "Back"
  end

  test "destroying a Discount type" do
    visit discount_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Discount type was successfully destroyed"
  end
end
