require "application_system_test_case"

class AlphaBlogsTest < ApplicationSystemTestCase
  setup do
    @alpha_blog = alpha_blogs(:one)
  end

  test "visiting the index" do
    visit alpha_blogs_url
    assert_selector "h1", text: "Alpha blogs"
  end

  test "should create alpha blog" do
    visit alpha_blogs_url
    click_on "New alpha blog"

    fill_in "Description", with: @alpha_blog.description
    fill_in "Title", with: @alpha_blog.title
    click_on "Create Alpha blog"

    assert_text "Alpha blog was successfully created"
    click_on "Back"
  end

  test "should update Alpha blog" do
    visit alpha_blog_url(@alpha_blog)
    click_on "Edit this alpha blog", match: :first

    fill_in "Description", with: @alpha_blog.description
    fill_in "Title", with: @alpha_blog.title
    click_on "Update Alpha blog"

    assert_text "Alpha blog was successfully updated"
    click_on "Back"
  end

  test "should destroy Alpha blog" do
    visit alpha_blog_url(@alpha_blog)
    click_on "Destroy this alpha blog", match: :first

    assert_text "Alpha blog was successfully destroyed"
  end
end
