require 'test_helper'

class IndexControllerTest < ActionController::TestCase
  test "the truth" do
    sign_in users(:joe)
    assert true
  end
end
