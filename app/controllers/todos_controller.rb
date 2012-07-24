class TodosController < ApplicationController
  # GET /todos
  # GET /todos.json
  def index
    @todos = Todo.order("created_at DESC").page(params[:page]).per(5)
    @todo = Todo.new
    respond_to do |format|
    format.html
    format.csv { send_data @todos.to_csv }
    format.xls #{ send_data @todos.to_csv(col_sep: "\t") }
    end
  end

  # GET /todos/1
  # GET /todos/1.json
  def show
    @todo = Todo.find(params[:id])
    render "show",:layout=>false
    
  end

  # GET /todos/new
  # GET /todos/new.json
  def new
    @todo = Todo.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @todo }
    end
  end

  # GET /todos/1/edit
  def edit
    @todo = Todo.find(params[:id])
  end

  # POST /todos
  # POST /todos.json
  def create
    @todo = Todo.new(params[:todo])
    
    respond_to do |format|
      if @todo.save
        format.html { redirect_to @todo, notice: 'Todo was successfully created.' }
        format.json { render json: @todo, status: :created, location: @todo }
      else
        format.html { render action: "new" }
        format.json { render json: @todo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /todos/1
  # PUT /todos/1.json
  def update
    @todo = Todo.find(params[:id])

    respond_to do |format|
      if @todo.update_attributes(params[:todo])
        format.html { redirect_to @todo, notice: 'Todo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @todo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /todos/1
  # DELETE /todos/1.json
  def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy

    respond_to do |format|
      format.html { redirect_to todos_url }
      format.json { head :no_content }
    end
  end
end
