require "application_system_test_case"

class LocalidadesTest < ApplicationSystemTestCase
  setup do
    @localidade = localidades(:one)
  end

  test "visiting the index" do
    visit localidades_url
    assert_selector "h1", text: "Localidades"
  end

  test "should create localidade" do
    visit localidades_url
    click_on "New localidade"

    fill_in "Latitude", with: @localidade.latitude
    fill_in "Longitude", with: @localidade.longitude
    fill_in "Nome", with: @localidade.nome
    click_on "Create Localidade"

    assert_text "Localidade was successfully created"
    click_on "Back"
  end

  test "should update Localidade" do
    visit localidade_url(@localidade)
    click_on "Edit this localidade", match: :first

    fill_in "Latitude", with: @localidade.latitude
    fill_in "Longitude", with: @localidade.longitude
    fill_in "Nome", with: @localidade.nome
    click_on "Update Localidade"

    assert_text "Localidade was successfully updated"
    click_on "Back"
  end

  test "should destroy Localidade" do
    visit localidade_url(@localidade)
    click_on "Destroy this localidade", match: :first

    assert_text "Localidade was successfully destroyed"
  end
end
