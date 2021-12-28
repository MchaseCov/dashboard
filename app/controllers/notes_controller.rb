class NotesController < ApplicationController
  before_action :set_note, only: %i[destroy]

  def index
    @notes = Note.all.order(created_at: :desc)
  end

  def new
    @note = Note.new
  end

  def create
    @note = Note.new(note_params)

    respond_to do |format|
      if @note.save
        format.turbo_stream
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @note.destroy

    respond_to do |format|
      format.turbo_stream { render turbo_stream: turbo_stream.remove(@note) }
      format.html { redirect_to pages_main_path, notice: 'Note was successfully destroyed.' }
    end
  end

  private

  def set_note
    @note = Note.find(params[:id])
  end

  def note_params
    params.require(:note).permit(:header, :body)
  end
end
