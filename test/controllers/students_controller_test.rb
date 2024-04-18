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

  test "show" do
    get "/students/#{Student.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "first_name", "last_name", "email", "phone_number", "short_bio", "linkedin_url", "twitter_handle", "website_url", "resume_url", "github_url", "photo", "created_at", "updated_at"], data.keys
  end

  test "update" do
    student = Student.first
    patch "/students/#{student.id}.json", params: { first_name: "Updated name" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated name", data["first_name"]
  end
  test "destroy" do
    assert_difference "Student.count", -1 do
      delete "/students/#{Student.first.id}.json"
      assert_response 200
    end
  end
end
