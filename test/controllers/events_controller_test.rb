require 'test_helper'

class EventsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  setup do
    sign_in users(:one)
    @team = teams(:one)
    @event = events(:one)
  end

  test "should get index" do
    get team_url(@team)
    assert_response :success
  end

  test "should get new" do
    get new_team_event_url(@team)
    assert_response :success
  end

  test "should create event" do
    assert_difference('Event.count') do
      post team_events_url(@team), params: { event: { fim: @event.fim, inicio: @event.inicio, local: @event.local, team_id: @event.team_id } }
    end

    assert_redirected_to team_event_url(@team,Event.last)
  end

  test "should show event" do
    get team_event_url(@team,@event)
    assert_response :success
  end

  test "should get edit" do
    get edit_team_event_url(@team,@event)
    assert_response :success
  end

  test "should update event" do
    patch team_event_url(@team,@event), params: { event: { fim: @event.fim, inicio: @event.inicio, local: @event.local, team_id: @event.team_id } }
    assert_redirected_to team_event_url(@team,@event)
  end

  test "should destroy event" do
    assert_difference('Event.count', -1) do
      delete team_event_url(@team,@event)
    end

    assert_redirected_to team_url(@team)
  end
end
