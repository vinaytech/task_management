require "application_system_test_case"

class StoreItemTagsTest < ApplicationSystemTestCase
  setup do
    @store_item_tag = store_item_tags(:one)
  end

  test "visiting the index" do
    visit store_item_tags_url
    assert_selector "h1", text: "Store Item Tags"
  end

  test "creating a Store item tag" do
    visit store_item_tags_url
    click_on "New Store Item Tag"

    fill_in "Discount", with: @store_item_tag.discount_id
    fill_in "Store item", with: @store_item_tag.store_item_id
    click_on "Create Store item tag"

    assert_text "Store item tag was successfully created"
    click_on "Back"
  end

  test "updating a Store item tag" do
    visit store_item_tags_url
    click_on "Edit", match: :first

    fill_in "Discount", with: @store_item_tag.discount_id
    fill_in "Store item", with: @store_item_tag.store_item_id
    click_on "Update Store item tag"

    assert_text "Store item tag was successfully updated"
    click_on "Back"
  end

  test "destroying a Store item tag" do
    visit store_item_tags_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Store item tag was successfully destroyed"
  end
end
