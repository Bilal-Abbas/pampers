require "test_helper"

class ProfitControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get profit_index_url
    assert_response :success
  end

  test "should get show" do
    get profit_show_url
    assert_response :success
  end
end
