require 'test_helper'

class CatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cate = cates(:one)
  end

  test "should get index" do
    get cates_url
    assert_response :success
  end

  test "should get new" do
    get new_cate_url
    assert_response :success
  end

  test "should create cate" do
    assert_difference('Cate.count') do
      post cates_url, params: { cate: { productname: @cate.productname } }
    end

    assert_redirected_to cate_url(Cate.last)
  end

  test "should show cate" do
    get cate_url(@cate)
    assert_response :success
  end

  test "should get edit" do
    get edit_cate_url(@cate)
    assert_response :success
  end

  test "should update cate" do
    patch cate_url(@cate), params: { cate: { productname: @cate.productname } }
    assert_redirected_to cate_url(@cate)
  end

  test "should destroy cate" do
    assert_difference('Cate.count', -1) do
      delete cate_url(@cate)
    end

    assert_redirected_to cates_url
  end
end
