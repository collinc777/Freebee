  class ProjectsController < ApplicationController
    ...
    def index
      ...
      render json: {message: 'Resource not found'}
    end
    ...
  end