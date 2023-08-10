class TodosController < ApplicationController
  before_action :initialize_todo, only: [:update, :destroy]

  def index
    todos = Todo.all
    render json: decorate_todos(todos)
  end

  def create
    task = params.require(:task)
    Todo.create!(task: task)
  end

  def update
    @todo.update_done
  end

  def destroy
    @todo.destroy!
  end

  private
  def decorate_todos(todos)
    todos.each_with_object([]) do |todo, acc|
      acc << {"Id"=>todo[:id],"Task"=>todo[:task], "Status"=>todo[:done]}
    end
  end

  def initialize_todo
    @todo = Todo.find(params.require(:id))
  end
end
