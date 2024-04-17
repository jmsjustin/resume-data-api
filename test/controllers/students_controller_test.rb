require "test_helper"

class StudentsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/students.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Student.count, data.length
  end
  test "create" do
    assert_difference "Student.count", 1 do
      post "/students.json", params: {
                               first_name: "Hank",
                               last_name: "Hankson",
                               email: "hank@example.com",
                               phone_number: "(234) 555-1234",
                               short_bio: "Hank has fun. Hank is fun.",
                               linkedin_url: "linkedin.com/hankhankson",
                               twitter_handle: "x.com/HankTheTank",
                               website_url: "www.TheRealHankson.com",
                               resume_url: "resume.com/hirehank",
                               github_url: "github.com/HHankson",
                               photo: "jpeg.png",
                             }
      assert_response 200
    end
  end
end
