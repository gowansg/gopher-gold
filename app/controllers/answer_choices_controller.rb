class AnswerChoicesController < ApplicationController
  before_action :set_answer_choice, only: [:show, :edit, :update, :destroy]

  # GET /answer_choices
  # GET /answer_choices.json
  def index
    @answer_choices = AnswerChoice.all
  end

  # GET /answer_choices/1
  # GET /answer_choices/1.json
  def show
  end

  # GET /answer_choices/new
  def new
    @answer_choice = AnswerChoice.new
  end

  # GET /answer_choices/1/edit
  def edit
  end

  # POST /answer_choices
  # POST /answer_choices.json
  def create
    @answer_choice = AnswerChoice.new(answer_choice_params)

    respond_to do |format|
      if @answer_choice.save
        format.html { redirect_to @answer_choice, notice: 'Answer choice was successfully created.' }
        format.json { render action: 'show', status: :created, location: @answer_choice }
      else
        format.html { render action: 'new' }
        format.json { render json: @answer_choice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /answer_choices/1
  # PATCH/PUT /answer_choices/1.json
  def update
    respond_to do |format|
      if @answer_choice.update(answer_choice_params)
        format.html { redirect_to @answer_choice, notice: 'Answer choice was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @answer_choice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /answer_choices/1
  # DELETE /answer_choices/1.json
  def destroy
    @answer_choice.destroy
    respond_to do |format|
      format.html { redirect_to answer_choices_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_answer_choice
      @answer_choice = AnswerChoice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def answer_choice_params
      params.require(:answer_choice).permit(:question, :id)
    end
end
