require 'test_helper'

class CoffeeTablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coffee_table = coffee_tables(:one)
  end

  test "should get index" do
    get coffee_tables_url
    assert_response :success
  end

  test "should get new" do
    get new_coffee_table_url
    assert_response :success
  end

  test "should create coffee_table" do
    assert_difference('CoffeeTable.count') do
      post coffee_tables_url, params: { coffee_table: { available: @coffee_table.available, description: @coffee_table.description, privilege: @coffee_table.privilege, room: @coffee_table.room } }
    end

    assert_redirected_to coffee_table_url(CoffeeTable.last)
  end

  test "should show coffee_table" do
    get coffee_table_url(@coffee_table)
    assert_response :success
  end

  test "should get edit" do
    get edit_coffee_table_url(@coffee_table)
    assert_response :success
  end

  test "should update coffee_table" do
    patch coffee_table_url(@coffee_table), params: { coffee_table: { available: @coffee_table.available, description: @coffee_table.description, privilege: @coffee_table.privilege, room: @coffee_table.room } }
    assert_redirected_to coffee_table_url(@coffee_table)
  end

  test "should destroy coffee_table" do
    assert_difference('CoffeeTable.count', -1) do
      delete coffee_table_url(@coffee_table)
    end

    assert_redirected_to coffee_tables_url
  end
end
