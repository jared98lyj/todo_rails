class TodoManagersController < ApplicationController
  before_action :set_todo_manager, only: [:show, :edit, :update, :destroy, :complete]


  # GET /todo_managers
  # GET /todo_managers.json
  def index
    key_search(params[:search])
  end

  # GET /todo_managers/1
  # GET /todo_managers/1.json
  def show
  end

  # GET /todo_managers/new
  def new
    @todo_manager = TodoManager.new
  end

  # GET /todo_managers/1/edit
  def edit
  end

  # POST /todo_managers
  # POST /todo_managers.json
  def create
    @todo_manager = TodoManager.new(todo_manager_params)

    respond_to do |format|
      if @todo_manager.save
        format.html { redirect_to @todo_manager, notice: 'Todo manager was successfully created.' }
        format.json { render :show, status: :created, location: @todo_manager }
      else
        format.html { render :new }
        format.json { render json: @todo_manager.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /todo_managers/1
  # PATCH/PUT /todo_managers/1.json
  def update
    respond_to do |format|
      if @todo_manager.update(todo_manager_params)
        format.html { redirect_to @todo_manager, notice: 'Todo manager was successfully updated.' }
        format.json { render :show, status: :ok, location: @todo_manager }
      else
        format.html { render :edit }
        format.json { render json: @todo_manager.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /todo_managers/1
  # DELETE /todo_managers/1.json
  def destroy
    @todo_manager.destroy
    respond_to do |format|
      format.html { redirect_to todo_managers_url, notice: 'Todo manager was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  def complete
    @todo_manager = TodoManager.find_by_id(params[:id])
    @todo_manager.update_attribute(:completed_at, DateTime.current)
    flash[:success] = "Todo item completed"
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_todo_manager
      @todo_manager = TodoManager.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def todo_manager_params
      params.require(:todo_manager).permit(:title, :description, :search, :tags, :completed_at, :deadline)
    end

    def key_search(search)
        if search #Will return 0 entries if search term is not found @temp_var
            @todo_managers = TodoManager.where("LOWER(title) Like ? OR LOWER(description) LIKE ?", 
            "%#{search.downcase}%", "%#{search.downcase}%")
        else  #Returns all the entries in the model if search term is NIL
            @todo_managers= TodoManager.all
        end
    end

end
