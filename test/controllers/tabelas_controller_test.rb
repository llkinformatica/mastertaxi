require "test_helper"

class TabelasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tabelas_index_url
    assert_response :success
  end
end
