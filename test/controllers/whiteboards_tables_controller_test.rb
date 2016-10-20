require 'test_helper'

class WhiteboardsTablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @whiteboards_table = whiteboards_tables(:one)
  end

  test "should get index" do
    get whiteboards_tables_url
    assert_response :success
  end

  test "should get new" do
    get new_whiteboards_table_url
    assert_response :success
  end

  test "should create whiteboards_table" do
    assert_difference('WhiteboardsTable.count') do
      post whiteboards_tables_url, params: { whiteboards_table: { available: @whiteboards_table.available, description: @whiteboards_table.description, privilege: @whiteboards_table.privilege, quantity: @whiteboards_table.quantity, room: @whiteboards_table.room } }
    end

    assert_redirected_to whiteboards_table_url(WhiteboardsTable.last)
  end

  test "should show whiteboards_table" do
    get whiteboards_table_url(@whiteboards_table)
    assert_response :success
  end

  test "should get edit" do
    get edit_whiteboards_table_url(@whiteboards_table)
    assert_response :success
  end

  test "should update whiteboards_table" do
    patch whiteboards_table_url(@whiteboards_table), params: { whiteboards_table: { available: @whiteboards_table.available, description: @whiteboards_table.description, privilege: @whiteboards_table.privilege, quantity: @whiteboards_table.quantity, room: @whiteboards_table.room } }
    assert_redirected_to whiteboards_table_url(@whiteboards_table)
  end

  test "should destroy whiteboards_table" do
    assert_difference('WhiteboardsTable.count', -1) do
      delete whiteboards_table_url(@whiteboards_table)
    end

    assert_redirected_to whiteboards_tables_url
  end
end
