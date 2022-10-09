require "test_helper"

class ChydakControllerTest < ActionDispatch::IntegrationTest
  test "should get Vtapke" do
    get chydak_Vtapke_url
    assert_response :success
  end
end
