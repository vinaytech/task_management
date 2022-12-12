require "test_helper"

class StoreItemTagsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @store_item_tag = store_item_tags(:one)
  end

  test "should get index" do
    get store_item_tags_url
    assert_response :success
  end

  test "should get new" do
    get new_store_item_tag_url
    assert_response :success
  end

  test "should create store_item_tag" do
    assert_difference('StoreItemTag.count') do
      post store_item_tags_url, params: { store_item_tag: { discount_id: @store_item_tag.discount_id, store_item_id: @store_item_tag.store_item_id } }
    end

    assert_redirected_to store_item_tag_url(StoreItemTag.last)
  end

  test "should show store_item_tag" do
    get store_item_tag_url(@store_item_tag)
    assert_response :success
  end

  test "should get edit" do
    get edit_store_item_tag_url(@store_item_tag)
    assert_response :success
  end

  test "should update store_item_tag" do
    patch store_item_tag_url(@store_item_tag), params: { store_item_tag: { discount_id: @store_item_tag.discount_id, store_item_id: @store_item_tag.store_item_id } }
    assert_redirected_to store_item_tag_url(@store_item_tag)
  end

  test "should destroy store_item_tag" do
    assert_difference('StoreItemTag.count', -1) do
      delete store_item_tag_url(@store_item_tag)
    end

    assert_redirected_to store_item_tags_url
  end
end
