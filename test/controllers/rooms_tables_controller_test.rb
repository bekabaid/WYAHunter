require 'test_helper'

class RoomsTablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rooms_table = rooms_tables(:one)
  end

  test "should get index" do
    get rooms_tables_url
    assert_response :success
  end

  test "should get new" do
    get new_rooms_table_url
    assert_response :success
  end

  test "should create rooms_table" do
    assert_difference('RoomsTable.count') do
      post rooms_tables_url, params: { rooms_table: { available: @rooms_table.available, description: @rooms_table.description, privilege: @rooms_table.privilege, quantity: @rooms_table.quantity, room: @rooms_table.room } }
    end

    assert_redirected_to rooms_table_url(RoomsTable.last)
  end

  test "should show rooms_table" do
    get rooms_table_url(@rooms_table)
    assert_response :success
  end

  test "should get edit" do
    get edit_rooms_table_url(@rooms_table)
    assert_response :success
  end

  test "should update rooms_table" do
    patch rooms_table_url(@rooms_table), params: { rooms_table: { available: @rooms_table.available, description: @rooms_table.description, privilege: @rooms_table.privilege, quantity: @rooms_table.quantity, room: @rooms_table.room } }
    assert_redirected_to rooms_table_url(@rooms_table)
  end

  test "should destroy rooms_table" do
    assert_difference('RoomsTable.count', -1) do
      delete rooms_table_url(@rooms_table)
    end

    assert_redirected_to rooms_tables_url
  end
end
