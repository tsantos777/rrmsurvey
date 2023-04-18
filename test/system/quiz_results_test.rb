require "application_system_test_case"

class QuizResultsTest < ApplicationSystemTestCase
  setup do
    @quiz_result = quiz_results(:one)
  end

  test "visiting the index" do
    visit quiz_results_url
    assert_selector "h1", text: "Quiz results"
  end

  test "should create quiz result" do
    visit quiz_results_url
    click_on "New quiz result"

    click_on "Create Quiz result"

    assert_text "Quiz result was successfully created"
    click_on "Back"
  end

  test "should update Quiz result" do
    visit quiz_result_url(@quiz_result)
    click_on "Edit this quiz result", match: :first

    click_on "Update Quiz result"

    assert_text "Quiz result was successfully updated"
    click_on "Back"
  end

  test "should destroy Quiz result" do
    visit quiz_result_url(@quiz_result)
    click_on "Destroy this quiz result", match: :first

    assert_text "Quiz result was successfully destroyed"
  end
end
