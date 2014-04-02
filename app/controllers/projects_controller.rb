class ProjectsController < ApplicationController
  before_filter :authenticate_admin!, :except => [:show, :index]
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  # GET /projects
  # GET /projects.json
  def index
    @projects = Project.all
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
  
  end

  # GET /projects/new
  def new
    @project = Project.new()
    1.times { @project.assets.build }
    

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @project }
    end

   
  end

  # GET /projects/1/edit
  def edit
      @project = Project.find_by_permalink(params[:id])
      1.times { @project.assets.build }
  end

  # POST /projects
  # POST /projects.json
  def create
    @project = Project.create(params[:project])
    

    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: 'Project was successfully created.' }
        format.json { render action: 'show', status: :created, location: @project }
      else
        format.html { render action: 'new' }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    @project = Project.find_by_permalink(params[:id])

    respond_to do |format|
      if @project.update(params[:project])
        format.html { redirect_to @project, notice: 'Project was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project = Project.find_by_permalink(params[:id])
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find_by_permalink(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:title, :description, :assets_attributes)
    end
end
