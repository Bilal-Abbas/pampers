require "application_system_test_case"

class SaleItemsTest < ApplicationSystemTestCase
  setup do
    @sale_item = sale_items(:one)
  end

  test "visiting the index" do
    visit sale_items_url
    assert_selector "h1", text: "Sale items"
  end

  test "should create sale item" do
    visit sale_items_url
    click_on "New sale item"

    click_on "Create Sale item"

    assert_text "Sale item was successfully created"
    click_on "Back"
  end

  test "should update Sale item" do
    visit sale_item_url(@sale_item)
    click_on "Edit this sale item", match: :first

    click_on "Update Sale item"

    assert_text "Sale item was successfully updated"
    click_on "Back"
  end

  test "should destroy Sale item" do
    visit sale_item_url(@sale_item)
    click_on "Destroy this sale item", match: :first

    assert_text "Sale item was successfully destroyed"
  end
end
