require 'test_helper'

class NotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @note = notes(:one)
  end

  test 'should get index' do
    get notes_url
    assert_response :success
  end

  test 'should get new' do
    get new_note_url
    assert_response :success
  end

  test 'should create note' do
    assert_difference('Note.count') do
      post notes_url, params: { note: {} }
    end
  end

  test 'should destroy note' do
    assert_difference('Note.count', -1) do
      delete note_url(@note)
    end
  end
end
