require "application_system_test_case"

class TeacherCvsTest < ApplicationSystemTestCase
  setup do
    @teacher_cv = teacher_cvs(:one)
  end

  test "visiting the index" do
    visit teacher_cvs_url
    assert_selector "h1", text: "Teacher cvs"
  end

  test "should create teacher cv" do
    visit teacher_cvs_url
    click_on "New teacher cv"

    fill_in "Content", with: @teacher_cv.content
    fill_in "Title", with: @teacher_cv.title
    click_on "Create Teacher cv"

    assert_text "Teacher cv was successfully created"
    click_on "Back"
  end

  test "should update Teacher cv" do
    visit teacher_cv_url(@teacher_cv)
    click_on "Edit this teacher cv", match: :first

    fill_in "Content", with: @teacher_cv.content
    fill_in "Title", with: @teacher_cv.title
    click_on "Update Teacher cv"

    assert_text "Teacher cv was successfully updated"
    click_on "Back"
  end

  test "should destroy Teacher cv" do
    visit teacher_cv_url(@teacher_cv)
    click_on "Destroy this teacher cv", match: :first

    assert_text "Teacher cv was successfully destroyed"
  end
end
