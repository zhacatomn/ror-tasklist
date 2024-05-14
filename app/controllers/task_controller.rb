class TaskController < ApplicationController
    def index:
        Task.all
    end
    def new:
        @task = Task.new
    end
    def create:
        @task = Task.new(task_params)
        if @task.save
            redirect_to @task
        else
            render :new, status: :unprocessable_entity
        end
    end
    def edit:
        @task = Task.find(params[:id])
    end
    def update:
        @task = Task.find(params[:id])
        if @task.update(task_params)
            redirect_to @task
        else 
            render :edit, status: :unprocessable_entity
        end
    end
    def destory:
        @task = Task.find(params[:id])
        @task.destory
        redirect_to :index, status: :see_other
    end
    private
    def task_params:
        params.require(:task).permit(:title, :desc, :is_done)
    end
end
