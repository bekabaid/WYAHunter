require 'test_helper'

class LaptopsTablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @laptops_table = laptops_tables(:one)
  end

  test "should get index" do
    get laptops_tables_url
    assert_response :success
  end

  test "should get new" do
    get new_laptops_table_url
    assert_response :success
  end

  test "should create laptops_table" do
    assert_difference('LaptopsTable.count') do
      post laptops_tables_url, params: { laptops_table: { available: @laptops_table.available, description: @laptops_table.description, privilege: @laptops_table.privilege, quantity: @laptops_table.quantity, room: @laptops_table.room } }
    end

    assert_redirected_to laptops_table_url(LaptopsTable.last)
  end

  test "should show laptops_table" do
    get laptops_table_url(@laptops_table)
    assert_response :success
  end

  test "should get edit" do
    get edit_laptops_table_url(@laptops_table)
    assert_response :success
  end

  test "should update laptops_table" do
    patch laptops_table_url(@laptops_table), params: { laptops_table: { available: @laptops_table.available, description: @laptops_table.description, privilege: @laptops_table.privilege, quantity: @laptops_table.quantity, room: @laptops_table.room } }
    assert_redirected_to laptops_table_url(@laptops_table)
  end

  test "should destroy laptops_table" do
    assert_difference('LaptopsTable.count', -1) do
      delete laptops_table_url(@laptops_table)
    end

    assert_redirected_to laptops_tables_url
  end
end
