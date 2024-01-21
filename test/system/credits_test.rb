require "application_system_test_case"

class CreditsTest < ApplicationSystemTestCase
  setup do
    @credit = credits(:one)
  end

  test "visiting the index" do
    visit credits_url
    assert_selector "h1", text: "Credits"
  end

  test "should create credit" do
    visit credits_url
    click_on "New credit"

    fill_in "Credit amount", with: @credit.credit_amount
    fill_in "Customer name", with: @credit.customer_name
    fill_in "Sale", with: @credit.sale_id
    fill_in "Total amount", with: @credit.total_amount
    fill_in "Total received", with: @credit.total_received
    click_on "Create Credit"

    assert_text "Credit was successfully created"
    click_on "Back"
  end

  test "should update Credit" do
    visit credit_url(@credit)
    click_on "Edit this credit", match: :first

    fill_in "Credit amount", with: @credit.credit_amount
    fill_in "Customer name", with: @credit.customer_name
    fill_in "Sale", with: @credit.sale_id
    fill_in "Total amount", with: @credit.total_amount
    fill_in "Total received", with: @credit.total_received
    click_on "Update Credit"

    assert_text "Credit was successfully updated"
    click_on "Back"
  end

  test "should destroy Credit" do
    visit credit_url(@credit)
    click_on "Destroy this credit", match: :first

    assert_text "Credit was successfully destroyed"
  end
end
