require "application_system_test_case"

class GerenciadorMaquinasTest < ApplicationSystemTestCase
  setup do
    @gerenciador_maquina = gerenciador_maquinas(:one)
  end

  test "visiting the index" do
    visit gerenciador_maquinas_url
    assert_selector "h1", text: "Gerenciador Maquinas"
  end

  test "creating a Gerenciador maquina" do
    visit gerenciador_maquinas_url
    click_on "New Gerenciador Maquina"

    check "Broken" if @gerenciador_maquina.broken
    fill_in "Description", with: @gerenciador_maquina.description
    fill_in "Machine type", with: @gerenciador_maquina.machine_type
    fill_in "Month", with: @gerenciador_maquina.month
    fill_in "Name", with: @gerenciador_maquina.name
    fill_in "Purchace date", with: @gerenciador_maquina.purchace_date
    click_on "Create Gerenciador maquina"

    assert_text "Gerenciador maquina was successfully created"
    click_on "Back"
  end

  test "updating a Gerenciador maquina" do
    visit gerenciador_maquinas_url
    click_on "Edit", match: :first

    check "Broken" if @gerenciador_maquina.broken
    fill_in "Description", with: @gerenciador_maquina.description
    fill_in "Machine type", with: @gerenciador_maquina.machine_type
    fill_in "Month", with: @gerenciador_maquina.month
    fill_in "Name", with: @gerenciador_maquina.name
    fill_in "Purchace date", with: @gerenciador_maquina.purchace_date
    click_on "Update Gerenciador maquina"

    assert_text "Gerenciador maquina was successfully updated"
    click_on "Back"
  end

  test "destroying a Gerenciador maquina" do
    visit gerenciador_maquinas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gerenciador maquina was successfully destroyed"
  end
end
