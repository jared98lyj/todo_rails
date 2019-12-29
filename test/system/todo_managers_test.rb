require "application_system_test_case"

class TodoManagersTest < ApplicationSystemTestCase
  setup do
    @todo_manager = todo_managers(:one)
  end

  test "visiting the index" do
    visit todo_managers_url
    assert_selector "h1", text: "Todo Managers"
  end

  test "creating a Todo manager" do
    visit todo_managers_url
    click_on "New Todo Manager"

    fill_in "Description", with: @todo_manager.description
    fill_in "Title", with: @todo_manager.title
    click_on "Create Todo manager"

    assert_text "Todo manager was successfully created"
    click_on "Back"
  end

  test "updating a Todo manager" do
    visit todo_managers_url
    click_on "Edit", match: :first

    fill_in "Description", with: @todo_manager.description
    fill_in "Title", with: @todo_manager.title
    click_on "Update Todo manager"

    assert_text "Todo manager was successfully updated"
    click_on "Back"
  end

  test "destroying a Todo manager" do
    visit todo_managers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Todo manager was successfully destroyed"
  end
end
