require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "cadastro correto de usuário" do
    u = User.new
    u.email = "test3@test"
    u.password = "123"
    u.password_confirmation = "123"
    assert u.save, "Usuário cadastrado"
  end
end
