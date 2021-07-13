require "test_helper"

class IntelligemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @intelligem = intelligems(:one)
  end

  test "should get index" do
    get intelligems_url
    assert_response :success
  end

  test "should get new" do
    get new_intelligem_url
    assert_response :success
  end

  test "should create intelligem" do
    assert_difference('Intelligem.count') do
      post intelligems_url, params: { intelligem: { link: @intelligem.link, link_type: @intelligem.link_type, name: @intelligem.name } }
    end

    assert_redirected_to intelligem_url(Intelligem.last)
  end

  test "should show intelligem" do
    get intelligem_url(@intelligem)
    assert_response :success
  end

  test "should get edit" do
    get edit_intelligem_url(@intelligem)
    assert_response :success
  end

  test "should update intelligem" do
    patch intelligem_url(@intelligem), params: { intelligem: { link: @intelligem.link, link_type: @intelligem.link_type, name: @intelligem.name } }
    assert_redirected_to intelligem_url(@intelligem)
  end

  test "should destroy intelligem" do
    assert_difference('Intelligem.count', -1) do
      delete intelligem_url(@intelligem)
    end

    assert_redirected_to intelligems_url
  end
end
