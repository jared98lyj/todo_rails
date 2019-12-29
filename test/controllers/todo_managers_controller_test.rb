require 'test_helper'

class TodoManagersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @todo_manager = todo_managers(:one)
  end

  test "should get index" do
    get todo_managers_url
    assert_response :success
  end

  test "should get new" do
    get new_todo_manager_url
    assert_response :success
  end

  test "should create todo_manager" do
    assert_difference('TodoManager.count') do
      post todo_managers_url, params: { todo_manager: { description: @todo_manager.description, title: @todo_manager.title } }
    end

    assert_redirected_to todo_manager_url(TodoManager.last)
  end

  test "should show todo_manager" do
    get todo_manager_url(@todo_manager)
    assert_response :success
  end

  test "should get edit" do
    get edit_todo_manager_url(@todo_manager)
    assert_response :success
  end

  test "should update todo_manager" do
    patch todo_manager_url(@todo_manager), params: { todo_manager: { description: @todo_manager.description, title: @todo_manager.title } }
    assert_redirected_to todo_manager_url(@todo_manager)
  end

  test "should destroy todo_manager" do
    assert_difference('TodoManager.count', -1) do
      delete todo_manager_url(@todo_manager)
    end

    assert_redirected_to todo_managers_url
  end
end
