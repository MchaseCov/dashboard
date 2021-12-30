class NotepadsController < ApplicationController
  before_action :set_notepad, only: %i[show edit update destroy]
  # GET /notepads
  def index
    @notepads = Notepad.all
  end

  # GET /notepads/1
  def show; end

  # GET /notepads/new
  def new
    @notepad = Notepad.new
  end

  # GET /notepads/1/edit
  def edit; end

  # POST /notepads
  def create
    @notepad = Notepad.new(notepad_params)

    respond_to do |format|
      if @notepad.save
        format.turbo_stream
        format.html { redirect_to notepad_url(@notepad), notice: "notepad was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT //1
  def update
    respond_to do |format|
      if @notepad.update(notepad_params)
        format.turbo_stream
        format.html { redirect_to notepad_url(notepad), notice: "notepad was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  # DELETE //1
  def destroy
    @notepad.destroy

    respond_to do |format|
      format.turbo_stream
      format.html { redirect_to notepads_url, notice: "notepad was successfully destroyed." }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_notepad
    @notepad = Notepad.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def notepad_params
    params.require(:notepad).permit(:title, :body)
  end
end
