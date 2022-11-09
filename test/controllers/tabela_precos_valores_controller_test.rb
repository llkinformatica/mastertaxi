require "test_helper"

class TabelaPrecosValoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tabela_precos_valor = tabela_precos_valores(:one)
  end

  test "should get index" do
    get tabela_precos_valores_url
    assert_response :success
  end

  test "should get new" do
    get new_tabela_precos_valor_url
    assert_response :success
  end

  test "should create tabela_precos_valor" do
    assert_difference("TabelaPrecosValor.count") do
      post tabela_precos_valores_url, params: { tabela_precos_valor: { itinerario_id: @tabela_precos_valor.itinerario_id, tabela_preco_id: @tabela_precos_valor.tabela_preco_id, valor_corrida: @tabela_precos_valor.valor_corrida, valor_hora_espera: @tabela_precos_valor.valor_hora_espera, valor_km_deslocamento: @tabela_precos_valor.valor_km_deslocamento } }
    end

    assert_redirected_to tabela_precos_valor_url(TabelaPrecosValor.last)
  end

  test "should show tabela_precos_valor" do
    get tabela_precos_valor_url(@tabela_precos_valor)
    assert_response :success
  end

  test "should get edit" do
    get edit_tabela_precos_valor_url(@tabela_precos_valor)
    assert_response :success
  end

  test "should update tabela_precos_valor" do
    patch tabela_precos_valor_url(@tabela_precos_valor), params: { tabela_precos_valor: { itinerario_id: @tabela_precos_valor.itinerario_id, tabela_preco_id: @tabela_precos_valor.tabela_preco_id, valor_corrida: @tabela_precos_valor.valor_corrida, valor_hora_espera: @tabela_precos_valor.valor_hora_espera, valor_km_deslocamento: @tabela_precos_valor.valor_km_deslocamento } }
    assert_redirected_to tabela_precos_valor_url(@tabela_precos_valor)
  end

  test "should destroy tabela_precos_valor" do
    assert_difference("TabelaPrecosValor.count", -1) do
      delete tabela_precos_valor_url(@tabela_precos_valor)
    end

    assert_redirected_to tabela_precos_valores_url
  end
end
