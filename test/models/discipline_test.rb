require 'test_helper'

class DisciplineTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "gravando disciplina com todos os campos" do
    d = Discipline.new
    d.descricao = "Inteligência Empresarial"
    d.codigo = "TEC.0447"
    d.sigla = "BI"
    d.periodo = 6
    d.cargaHoraria = 67
    assert d.save, "Disciplina gravada com todos os campos"
  end

  test "gravando disciplina apenas com campos obrigatórios" do
    d = Discipline.new
    d.descricao = "Inteligência Empresarial"
    d.cargaHoraria = 67
    assert d.save, "Disciplina gravada apenas com campos obrigatórios"
  end

  test "gravando disciplina sem campo obrigatório" do
    d = Discipline.new
    d.descricao = "Inteligência Empresarial"
    d.codigo = "TEC.0447"
    d.periodo = 6
    assert_not d.save, "Tentativa de gravar disciplina sem campo obrigatório"
  end
end
