require "application_system_test_case"

class TabelaPrecosValoresTest < ApplicationSystemTestCase
  setup do
    @tabela_precos_valor = tabela_precos_valores(:one)
  end

  test "visiting the index" do
    visit tabela_precos_valores_url
    assert_selector "h1", text: "Tabela precos valor"
  end

  test "should create tabela precos valor" do
    visit tabela_precos_valores_url
    click_on "New tabela precos valor"

    fill_in "Itinerario", with: @tabela_precos_valor.itinerario_id
    fill_in "Tabela preco", with: @tabela_precos_valor.tabela_preco_id
    fill_in "Valor corrida", with: @tabela_precos_valor.valor_corrida
    fill_in "Valor hora espera", with: @tabela_precos_valor.valor_hora_espera
    fill_in "Valor km deslocamento", with: @tabela_precos_valor.valor_km_deslocamento
    click_on "Create Tabela precos valor"

    assert_text "Tabela precos valor was successfully created"
    click_on "Back"
  end

  test "should update Tabela precos valor" do
    visit tabela_precos_valor_url(@tabela_precos_valor)
    click_on "Edit this tabela precos valor", match: :first

    fill_in "Itinerario", with: @tabela_precos_valor.itinerario_id
    fill_in "Tabela preco", with: @tabela_precos_valor.tabela_preco_id
    fill_in "Valor corrida", with: @tabela_precos_valor.valor_corrida
    fill_in "Valor hora espera", with: @tabela_precos_valor.valor_hora_espera
    fill_in "Valor km deslocamento", with: @tabela_precos_valor.valor_km_deslocamento
    click_on "Update Tabela precos valor"

    assert_text "Tabela precos valor was successfully updated"
    click_on "Back"
  end

  test "should destroy Tabela precos valor" do
    visit tabela_precos_valor_url(@tabela_precos_valor)
    click_on "Destroy this tabela precos valor", match: :first

    assert_text "Tabela precos valor was successfully destroyed"
  end
end
