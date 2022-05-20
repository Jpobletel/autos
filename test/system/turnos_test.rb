require "application_system_test_case"

class TurnosTest < ApplicationSystemTestCase
  setup do
    @turno = turnos(:one)
  end

  test "visiting the index" do
    visit turnos_url
    assert_selector "h1", text: "Turnos"
  end

  test "creating a Turno" do
    visit turnos_url
    click_on "New Turno"

    fill_in "Capacidad", with: @turno.capacidad
    fill_in "Conductor", with: @turno.conductor
    fill_in "Fecha", with: @turno.fecha
    fill_in "Hora", with: @turno.hora
    fill_in "Trayecto", with: @turno.trayecto
    click_on "Create Turno"

    assert_text "Turno was successfully created"
    click_on "Back"
  end

  test "updating a Turno" do
    visit turnos_url
    click_on "Edit", match: :first

    fill_in "Capacidad", with: @turno.capacidad
    fill_in "Conductor", with: @turno.conductor
    fill_in "Fecha", with: @turno.fecha
    fill_in "Hora", with: @turno.hora
    fill_in "Trayecto", with: @turno.trayecto
    click_on "Update Turno"

    assert_text "Turno was successfully updated"
    click_on "Back"
  end

  test "destroying a Turno" do
    visit turnos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Turno was successfully destroyed"
  end
end
