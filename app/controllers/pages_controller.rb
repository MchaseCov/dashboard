class PagesController < ApplicationController
  def main
    @recent_notepad = Notepad.order('updated_at').last
  end
end
