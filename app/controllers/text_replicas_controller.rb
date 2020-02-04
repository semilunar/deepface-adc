class TextReplicasController < ApplicationController
  before_action :set_text_replica, only: [:show, :edit, :update, :destroy]

  # GET /text_replicas
  # GET /text_replicas.json
  def index
    @text_replicas = TextReplica.all
  end

  # GET /text_replicas/1
  # GET /text_replicas/1.json
  def show
  end

  # GET /text_replicas/new
  def new
    @step = Step.find(params[:step_id])
    @text_replica = TextReplica.new
  end

  # GET /text_replicas/1/edit
  def edit
    @step = Step.find(params[:step_id])
  end

  # POST /text_replicas
  # POST /text_replicas.json
  def create
    step = Step.find(params[:step_id])
    @text_replica = step.text_replicas.create(text_replica_params)

    respond_to do |format|
      if @text_replica.save
        format.html { redirect_to step_path(step), notice: 'TextReplica was successfully created.' }
        format.json { render :show, status: :created, location: @text_replica }
      else
        format.html { render :new }
        format.json { render json: @text_replica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /text_replicas/1
  # PATCH/PUT /text_replicas/1.json
  def update
    respond_to do |format|
      if @text_replica.update(text_replica_params)
        if @text_replica.type == "TextReplica"
          redirect_path = text_replica_path(@text_replica)
        elsif @text_replica.type == "ImageReplica"
          redirect_path = image_replica_path(@text_replica)
        end
        format.html { redirect_to redirect_path, notice: 'TextReplica was successfully updated.' }
        format.json { render :show, status: :ok, location: @text_replica }
      else
        format.html { render :edit }
        format.json { render json: @text_replica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /text_replicas/1
  # DELETE /text_replicas/1.json
  def destroy
    @text_replica.destroy
    respond_to do |format|
      format.html { redirect_to replicas_url, notice: 'TextReplica was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_text_replica
      @text_replica = TextReplica.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def text_replica_params
      params.require(:text_replica).permit(:position, :timeout, :phrase, :image)
    end
end
