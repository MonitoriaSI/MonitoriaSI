require 'test_helper'

class PersonTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "Concluindo cadastro de pessoa todos os campos obrigatórios" do
    p = Person.new
    p.nome = "Fulano"
    p.matricula = "123"
    p.user = User.first
    assert p.save
  end
  test "Concluindo cadastro de pessoa com matricula duplicada" do
    p = Person.new
    p.nome = "Fulano2"
    p.matricula = "MyString2"
    p.user = User.first
    assert_not p.save
  end
  test "Concluindo cadastro de pessoa sem matricula" do
    p = Person.new
    p.nome = "Fulano2"
    p.user = User.first
    assert_not p.save
  end
end
