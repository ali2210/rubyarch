require "test_helper"

class AlphaBlogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @alpha_blog = alpha_blogs(:one)
  end

  test "should get index" do
    get alpha_blogs_url
    assert_response :success
  end

  test "should get new" do
    get new_alpha_blog_url
    assert_response :success
  end

  test "should create alpha_blog" do
    assert_difference("AlphaBlog.count") do
      post alpha_blogs_url, params: { alpha_blog: { description: @alpha_blog.description, title: @alpha_blog.title } }
    end

    assert_redirected_to alpha_blog_url(AlphaBlog.last)
  end

  test "should show alpha_blog" do
    get alpha_blog_url(@alpha_blog)
    assert_response :success
  end

  test "should get edit" do
    get edit_alpha_blog_url(@alpha_blog)
    assert_response :success
  end

  test "should update alpha_blog" do
    patch alpha_blog_url(@alpha_blog), params: { alpha_blog: { description: @alpha_blog.description, title: @alpha_blog.title } }
    assert_redirected_to alpha_blog_url(@alpha_blog)
  end

  test "should destroy alpha_blog" do
    assert_difference("AlphaBlog.count", -1) do
      delete alpha_blog_url(@alpha_blog)
    end

    assert_redirected_to alpha_blogs_url
  end
end
