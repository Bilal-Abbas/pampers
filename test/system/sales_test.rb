require "application_system_test_case"

class SalesTest < ApplicationSystemTestCase
  setup do
    @sale = sales(:one)
  end

  test "visiting the index" do
    visit sales_url
    assert_selector "h1", text: "Sales"
  end

  test "should create sale" do
    visit sales_url
    click_on "New sale"

    fill_in "Contact", with: @sale.contact
    fill_in "Customer address", with: @sale.customer_address
    fill_in "Customer name", with: @sale.customer_name
    fill_in "Order booker name", with: @sale.order_booker_name
    fill_in "Payment method", with: @sale.payment_method
    fill_in "Supplier name", with: @sale.supplier_name
    click_on "Create Sale"

    assert_text "Sale was successfully created"
    click_on "Back"
  end

  test "should update Sale" do
    visit sale_url(@sale)
    click_on "Edit this sale", match: :first

    fill_in "Contact", with: @sale.contact
    fill_in "Customer address", with: @sale.customer_address
    fill_in "Customer name", with: @sale.customer_name
    fill_in "Order booker name", with: @sale.order_booker_name
    fill_in "Payment method", with: @sale.payment_method
    fill_in "Supplier name", with: @sale.supplier_name
    click_on "Update Sale"

    assert_text "Sale was successfully updated"
    click_on "Back"
  end

  test "should destroy Sale" do
    visit sale_url(@sale)
    click_on "Destroy this sale", match: :first

    assert_text "Sale was successfully destroyed"
  end
end
