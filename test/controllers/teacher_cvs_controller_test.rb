require "test_helper"

class TeacherCvsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @teacher_cv = teacher_cvs(:one)
  end

  test "should get index" do
    get teacher_cvs_url
    assert_response :success
  end

  test "should get new" do
    get new_teacher_cv_url
    assert_response :success
  end

  test "should create teacher_cv" do
    assert_difference("TeacherCv.count") do
      post teacher_cvs_url, params: { teacher_cv: { content: @teacher_cv.content, title: @teacher_cv.title } }
    end

    assert_redirected_to teacher_cv_url(TeacherCv.last)
  end

  test "should show teacher_cv" do
    get teacher_cv_url(@teacher_cv)
    assert_response :success
  end

  test "should get edit" do
    get edit_teacher_cv_url(@teacher_cv)
    assert_response :success
  end

  test "should update teacher_cv" do
    patch teacher_cv_url(@teacher_cv), params: { teacher_cv: { content: @teacher_cv.content, title: @teacher_cv.title } }
    assert_redirected_to teacher_cv_url(@teacher_cv)
  end

  test "should destroy teacher_cv" do
    assert_difference("TeacherCv.count", -1) do
      delete teacher_cv_url(@teacher_cv)
    end

    assert_redirected_to teacher_cvs_url
  end
end
