class TodosController < ApplicationController
    skip_before_action :verify_authenticity_token
    def index
     @uncompletedTasks = Todo.where(isCompleted: false)
     @completedTasks = Todo.where(isCompleted: true)
     @todo = Todo.new
    end

    def show
        @todo = Todo.find(params[:id])
    end
    
    def new 
        @todo = Todo.new
    end

    def create
        @todo = Todo.create todo_params
        redirect_to root_path
    end

    def edit
        @todo = Todo.find(params[:id])
    end

    def update
        @todo = Todo.find(params[:id])
        @todo.update todo_params
        redirect_to root_path
    end

    def updatecompleted 
        @todo = Todo.find(params[:id])
        @todo.update todo_params
        redirect_to root_path
    end

    def destroy 
        Todo.find(params[:id]).destroy
        redirect_to root_path
    end

   

private
    def todo_params
        params.require(:todo).permit(:id,:title,:description,:isCompleted)
    end
end
