class ImageReplicasController < ApplicationController
  before_action :set_image_replica, only: [:show, :edit, :update, :destroy]

  # GET /image_replicas
  # GET /image_replicas.json
  def index
    @image_replicas = ImageReplica.all
  end

  # GET /image_replicas/1
  # GET /image_replicas/1.json
  def show
  end

  # GET /image_replicas/new
  def new
    @step = Step.find(params[:step_id])
    @image_replica = ImageReplica.new
  end

  # GET /image_replicas/1/edit
  def edit
    @step = Step.find(params[:step_id])
  end

  # POST /image_replicas
  # POST /image_replicas.json
  def create
    step = Step.find(params[:step_id])
    @image_replica = step.image_replicas.create.new(image_replica_params)

    respond_to do |format|
      if @image_replica.save
        format.html { redirect_to step_path(step), notice: 'ImageReplica was successfully created.' }
        format.json { render :show, status: :created, location: @image_replica }
      else
        format.html { render :new }
        format.json { render json: @image_replica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /image_replicas/1
  # PATCH/PUT /image_replicas/1.json
  def update
    respond_to do |format|
      if @image_replica.update(image_replica_params)
        if @image_replica.type == "TextReplica"
          redirect_path = text_replica_path(@image_replica)
        elsif @image_replica.type == "ImageReplica"
          redirect_path = image_replica_path(@image_replica)
        end
        format.html { redirect_to redirect_path, notice: 'ImageReplica was successfully updated.' }
        format.json { render :show, status: :ok, location: @image_replica }
      else
        format.html { render :edit }
        format.json { render json: @image_replica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /image_replicas/1
  # DELETE /image_replicas/1.json
  def destroy
    @image_replica.destroy
    respond_to do |format|
      format.html { redirect_to  replicas_url, notice: 'ImageReplica was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_image_replica
      @image_replica = ImageReplica.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def image_replica_params
      params.require(:image_replica).permit(:position, :timeout, :phrase, :image)
    end
end
