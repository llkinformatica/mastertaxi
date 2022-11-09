require "application_system_test_case"

class CooperadosTest < ApplicationSystemTestCase
  setup do
    @cooperado = cooperados(:one)
  end

  test "visiting the index" do
    visit cooperados_url
    assert_selector "h1", text: "Cooperados"
  end

  test "should create cooperado" do
    visit cooperados_url
    click_on "New cooperado"

    fill_in "Apelido", with: @cooperado.apelido
    fill_in "Bairro", with: @cooperado.bairro
    fill_in "Celular", with: @cooperado.celular
    fill_in "Cep", with: @cooperado.cep
    fill_in "Cidade", with: @cooperado.cidade
    fill_in "Cnh categoria", with: @cooperado.cnh_categoria
    fill_in "Cnh registro", with: @cooperado.cnh_registro
    fill_in "Cnh vencimento", with: @cooperado.cnh_vencimento
    fill_in "Complemento", with: @cooperado.complemento
    fill_in "Cpf", with: @cooperado.cpf
    fill_in "Data admissao", with: @cooperado.data_admissao
    fill_in "Data demissao", with: @cooperado.data_demissao
    fill_in "Estado", with: @cooperado.estado
    fill_in "Logradouro", with: @cooperado.logradouro
    fill_in "Matricula", with: @cooperado.matricula
    fill_in "Nascimento", with: @cooperado.nascimento
    fill_in "Nome", with: @cooperado.nome
    fill_in "Numero", with: @cooperado.numero
    fill_in "Telefone", with: @cooperado.telefone
    fill_in "Tipo sanguineo", with: @cooperado.tipo_sanguineo
    click_on "Create Cooperado"

    assert_text "Cooperado was successfully created"
    click_on "Back"
  end

  test "should update Cooperado" do
    visit cooperado_url(@cooperado)
    click_on "Edit this cooperado", match: :first

    fill_in "Apelido", with: @cooperado.apelido
    fill_in "Bairro", with: @cooperado.bairro
    fill_in "Celular", with: @cooperado.celular
    fill_in "Cep", with: @cooperado.cep
    fill_in "Cidade", with: @cooperado.cidade
    fill_in "Cnh categoria", with: @cooperado.cnh_categoria
    fill_in "Cnh registro", with: @cooperado.cnh_registro
    fill_in "Cnh vencimento", with: @cooperado.cnh_vencimento
    fill_in "Complemento", with: @cooperado.complemento
    fill_in "Cpf", with: @cooperado.cpf
    fill_in "Data admissao", with: @cooperado.data_admissao
    fill_in "Data demissao", with: @cooperado.data_demissao
    fill_in "Estado", with: @cooperado.estado
    fill_in "Logradouro", with: @cooperado.logradouro
    fill_in "Matricula", with: @cooperado.matricula
    fill_in "Nascimento", with: @cooperado.nascimento
    fill_in "Nome", with: @cooperado.nome
    fill_in "Numero", with: @cooperado.numero
    fill_in "Telefone", with: @cooperado.telefone
    fill_in "Tipo sanguineo", with: @cooperado.tipo_sanguineo
    click_on "Update Cooperado"

    assert_text "Cooperado was successfully updated"
    click_on "Back"
  end

  test "should destroy Cooperado" do
    visit cooperado_url(@cooperado)
    click_on "Destroy this cooperado", match: :first

    assert_text "Cooperado was successfully destroyed"
  end
end
