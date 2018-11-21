require "application_system_test_case"

class RemuneracaosTest < ApplicationSystemTestCase
  setup do
    @remuneracao = remuneracaos(:one)
  end

  test "visiting the index" do
    visit remuneracaos_url
    assert_selector "h1", text: "Remuneracaos"
  end

  test "creating a Remuneracao" do
    visit remuneracaos_url
    click_on "New Remuneracao"

    fill_in "Cargo", with: @remuneracao.cargo
    fill_in "Competencia", with: @remuneracao.competencia
    fill_in "Estabelecimento", with: @remuneracao.estabelecimento
    fill_in "Nome", with: @remuneracao.nome
    fill_in "Provento", with: @remuneracao.provento
    click_on "Create Remuneracao"

    assert_text "Remuneracao was successfully created"
    click_on "Back"
  end

  test "updating a Remuneracao" do
    visit remuneracaos_url
    click_on "Edit", match: :first

    fill_in "Cargo", with: @remuneracao.cargo
    fill_in "Competencia", with: @remuneracao.competencia
    fill_in "Estabelecimento", with: @remuneracao.estabelecimento
    fill_in "Nome", with: @remuneracao.nome
    fill_in "Provento", with: @remuneracao.provento
    click_on "Update Remuneracao"

    assert_text "Remuneracao was successfully updated"
    click_on "Back"
  end

  test "destroying a Remuneracao" do
    visit remuneracaos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Remuneracao was successfully destroyed"
  end
end
