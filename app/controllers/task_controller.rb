class TaskController < ApplicationController
    def index:
        Task.all
    end
    def new:
        @task = Task.new
    end
end
