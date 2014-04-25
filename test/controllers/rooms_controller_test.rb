require 'test_helper'

class RoomsControllerTest < ActionController::TestCase
  setup do
    @room = rooms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rooms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create room" do
    assert_difference('Room.count') do
      post :create, room: { buildingpk: @room.buildingpk, computer_connectivity: @room.computer_connectivity, ext_cost: @room.ext_cost, ext_use_allowed: @room.ext_use_allowed, floor: @room.floor, int_cost: @room.int_cost, max_capacity: @room.max_capacity, multi_level: @room.multi_level, overhead: @room.overhead, projection_system: @room.projection_system, restrictions: @room.restrictions, room_num: @room.room_num, sound_system: @room.sound_system, stage: @room.stage, whiteboards: @room.whiteboards, wireless_access: @room.wireless_access }
    end

    assert_redirected_to room_path(assigns(:room))
  end

  test "should show room" do
    get :show, id: @room
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @room
    assert_response :success
  end

  test "should update room" do
    patch :update, id: @room, room: { buildingpk: @room.buildingpk, computer_connectivity: @room.computer_connectivity, ext_cost: @room.ext_cost, ext_use_allowed: @room.ext_use_allowed, floor: @room.floor, int_cost: @room.int_cost, max_capacity: @room.max_capacity, multi_level: @room.multi_level, overhead: @room.overhead, projection_system: @room.projection_system, restrictions: @room.restrictions, room_num: @room.room_num, sound_system: @room.sound_system, stage: @room.stage, whiteboards: @room.whiteboards, wireless_access: @room.wireless_access }
    assert_redirected_to room_path(assigns(:room))
  end

  test "should destroy room" do
    assert_difference('Room.count', -1) do
      delete :destroy, id: @room
    end

    assert_redirected_to rooms_path
  end
end
