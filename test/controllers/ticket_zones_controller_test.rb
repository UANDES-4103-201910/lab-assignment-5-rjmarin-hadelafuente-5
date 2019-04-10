require 'test_helper'

class TicketZonesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ticket_zone = ticket_zones(:one)
  end

  test "should get index" do
    get ticket_zones_url
    assert_response :success
  end

  test "should get new" do
    get new_ticket_zone_url
    assert_response :success
  end

  test "should create ticket_zone" do
    assert_difference('TicketZone.count') do
      post ticket_zones_url, params: { ticket_zone: {  } }
    end

    assert_redirected_to ticket_zone_url(TicketZone.last)
  end

  test "should show ticket_zone" do
    get ticket_zone_url(@ticket_zone)
    assert_response :success
  end

  test "should get edit" do
    get edit_ticket_zone_url(@ticket_zone)
    assert_response :success
  end

  test "should update ticket_zone" do
    patch ticket_zone_url(@ticket_zone), params: { ticket_zone: {  } }
    assert_redirected_to ticket_zone_url(@ticket_zone)
  end

  test "should destroy ticket_zone" do
    assert_difference('TicketZone.count', -1) do
      delete ticket_zone_url(@ticket_zone)
    end

    assert_redirected_to ticket_zones_url
  end
end
