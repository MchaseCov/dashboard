require 'application_system_test_case'

class NotesTest < ApplicationSystemTestCase
  setup do
    @note = notes(:one)
  end

  test 'visiting the index' do
    visit notes_url
    assert_selector 'h1', text: 'Notes'
  end

  test 'should destroy Note' do
    visit note_url(@note)
    click_on 'Destroy this note', match: :first

    assert_text 'Note was successfully destroyed'
  end
end
