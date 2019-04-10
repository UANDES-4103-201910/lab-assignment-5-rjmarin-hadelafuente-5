require "application_system_test_case"

class TicketZonesTest < ApplicationSystemTestCase
  setup do
    @ticket_zone = ticket_zones(:one)
  end

  test "visiting the index" do
    visit ticket_zones_url
    assert_selector "h1", text: "Ticket Zones"
  end

  test "creating a Ticket zone" do
    visit ticket_zones_url
    click_on "New Ticket Zone"

    click_on "Create Ticket zone"

    assert_text "Ticket zone was successfully created"
    click_on "Back"
  end

  test "updating a Ticket zone" do
    visit ticket_zones_url
    click_on "Edit", match: :first

    click_on "Update Ticket zone"

    assert_text "Ticket zone was successfully updated"
    click_on "Back"
  end

  test "destroying a Ticket zone" do
    visit ticket_zones_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ticket zone was successfully destroyed"
  end
end
