require "test_helper"

class CooperadosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cooperado = cooperados(:one)
  end

  test "should get index" do
    get cooperados_url
    assert_response :success
  end

  test "should get new" do
    get new_cooperado_url
    assert_response :success
  end

  test "should create cooperado" do
    assert_difference("Cooperado.count") do
      post cooperados_url, params: { cooperado: { apelido: @cooperado.apelido, bairro: @cooperado.bairro, celular: @cooperado.celular, cep: @cooperado.cep, cidade: @cooperado.cidade, cnh_categoria: @cooperado.cnh_categoria, cnh_registro: @cooperado.cnh_registro, cnh_vencimento: @cooperado.cnh_vencimento, complemento: @cooperado.complemento, cpf: @cooperado.cpf, data_admissao: @cooperado.data_admissao, data_demissao: @cooperado.data_demissao, estado: @cooperado.estado, logradouro: @cooperado.logradouro, matricula: @cooperado.matricula, nascimento: @cooperado.nascimento, nome: @cooperado.nome, numero: @cooperado.numero, telefone: @cooperado.telefone, tipo_sanguineo: @cooperado.tipo_sanguineo } }
    end

    assert_redirected_to cooperado_url(Cooperado.last)
  end

  test "should show cooperado" do
    get cooperado_url(@cooperado)
    assert_response :success
  end

  test "should get edit" do
    get edit_cooperado_url(@cooperado)
    assert_response :success
  end

  test "should update cooperado" do
    patch cooperado_url(@cooperado), params: { cooperado: { apelido: @cooperado.apelido, bairro: @cooperado.bairro, celular: @cooperado.celular, cep: @cooperado.cep, cidade: @cooperado.cidade, cnh_categoria: @cooperado.cnh_categoria, cnh_registro: @cooperado.cnh_registro, cnh_vencimento: @cooperado.cnh_vencimento, complemento: @cooperado.complemento, cpf: @cooperado.cpf, data_admissao: @cooperado.data_admissao, data_demissao: @cooperado.data_demissao, estado: @cooperado.estado, logradouro: @cooperado.logradouro, matricula: @cooperado.matricula, nascimento: @cooperado.nascimento, nome: @cooperado.nome, numero: @cooperado.numero, telefone: @cooperado.telefone, tipo_sanguineo: @cooperado.tipo_sanguineo } }
    assert_redirected_to cooperado_url(@cooperado)
  end

  test "should destroy cooperado" do
    assert_difference("Cooperado.count", -1) do
      delete cooperado_url(@cooperado)
    end

    assert_redirected_to cooperados_url
  end
end
