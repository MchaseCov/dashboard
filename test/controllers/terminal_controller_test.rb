require 'test_helper'

class TerminalControllerTest < ActionDispatch::IntegrationTest
  test 'should get local_to_vm' do
    get terminal_local_to_vm_path
    assert_response :success
  end
  test 'should get local_to_loca' do
    get terminal_local_to_local_path
    assert_response :success
  end
  test 'should get remote_to_local' do
    get terminal_remote_to_local_path
    assert_response :success
  end
end
