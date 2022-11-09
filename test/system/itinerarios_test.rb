require "application_system_test_case"

class ItinerariosTest < ApplicationSystemTestCase
  setup do
    @itinerario = itinerarios(:one)
  end

  test "visiting the index" do
    visit itinerarios_url
    assert_selector "h1", text: "Itinerarios"
  end

  test "should create itinerario" do
    visit itinerarios_url
    click_on "New itinerario"

    fill_in "Destino", with: @itinerario.destino
    fill_in "Origem", with: @itinerario.origem
    click_on "Create Itinerario"

    assert_text "Itinerario was successfully created"
    click_on "Back"
  end

  test "should update Itinerario" do
    visit itinerario_url(@itinerario)
    click_on "Edit this itinerario", match: :first

    fill_in "Destino", with: @itinerario.destino
    fill_in "Origem", with: @itinerario.origem
    click_on "Update Itinerario"

    assert_text "Itinerario was successfully updated"
    click_on "Back"
  end

  test "should destroy Itinerario" do
    visit itinerario_url(@itinerario)
    click_on "Destroy this itinerario", match: :first

    assert_text "Itinerario was successfully destroyed"
  end
end
