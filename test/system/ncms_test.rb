require "application_system_test_case"

class NcmsTest < ApplicationSystemTestCase
  setup do
    @ncm = ncms(:one)
  end

  test "visiting the index" do
    visit ncms_url
    assert_selector "h1", text: "Ncms"
  end

  test "creating a Ncm" do
    visit ncms_url
    click_on "New Ncm"

    fill_in "Codigo", with: @ncm.codigo
    fill_in "Descricao", with: @ncm.descricao
    fill_in "Percicm", with: @ncm.percicm
    fill_in "Percipi", with: @ncm.percipi
    fill_in "Percst", with: @ncm.percst
    fill_in "Tipoicm", with: @ncm.tipoicm
    fill_in "User", with: @ncm.user_id
    click_on "Create Ncm"

    assert_text "Ncm was successfully created"
    click_on "Back"
  end

  test "updating a Ncm" do
    visit ncms_url
    click_on "Edit", match: :first

    fill_in "Codigo", with: @ncm.codigo
    fill_in "Descricao", with: @ncm.descricao
    fill_in "Percicm", with: @ncm.percicm
    fill_in "Percipi", with: @ncm.percipi
    fill_in "Percst", with: @ncm.percst
    fill_in "Tipoicm", with: @ncm.tipoicm
    fill_in "User", with: @ncm.user_id
    click_on "Update Ncm"

    assert_text "Ncm was successfully updated"
    click_on "Back"
  end

  test "destroying a Ncm" do
    visit ncms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ncm was successfully destroyed"
  end
end
