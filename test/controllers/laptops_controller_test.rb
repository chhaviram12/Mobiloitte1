require 'test_helper'

class LaptopsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @laptop = laptops(:one)
  end

  test "should get index" do
    get laptops_url
    assert_response :success
  end

  test "should get new" do
    get new_laptop_url
    assert_response :success
  end

  test "should create laptop" do
    assert_difference('Laptop.count') do
      post laptops_url, params: { laptop: { company: @laptop.company, dat: @laptop.dat, image: @laptop.image, processor: @laptop.processor } }
    end

    assert_redirected_to laptop_url(Laptop.last)
  end

  test "should show laptop" do
    get laptop_url(@laptop)
    assert_response :success
  end

  test "should get edit" do
    get edit_laptop_url(@laptop)
    assert_response :success
  end

  test "should update laptop" do
    patch laptop_url(@laptop), params: { laptop: { company: @laptop.company, dat: @laptop.dat, image: @laptop.image, processor: @laptop.processor } }
    assert_redirected_to laptop_url(@laptop)
  end

  test "should destroy laptop" do
    assert_difference('Laptop.count', -1) do
      delete laptop_url(@laptop)
    end

    assert_redirected_to laptops_url
  end
end
