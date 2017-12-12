class TodosController < ApplicationController
  before_action :set_todo, only: [:show, :update, :destroy]

  # GET /todos
  def index
    json_response(
      params[:type].eql?('cancel') ? Todo.cancel_orders_json : params[:type].eql?('moved') ? Todo.swap_orders_json : params[:type].eql?('matrix') ? Todo.matrix_json : Todo.orders_json  
    )
  end

  # GET /todos/:id
  def show
    json_response(@todo)
  end

  # POST /todos
  def create
    @todo = Todo.create!(todo_params)
    json_response(@todo, :created)
  end

  # PUT /todos/:id
  def update
    @todo.update(todo_params)
    head :no_content
  end

  # DELETE /todos/:id
  def destroy
    @todo.destroy
    head :no_content
  end

  private

  def todo_params
    params.permit(:title, :created_by)
  end

  def set_todo
    @todo = Todo.find(params[:id])
  end
end
