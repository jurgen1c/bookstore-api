

class CategorysController < ApplicationController
  before_action :set_category, only: %i[show update destroy]

  # GET /todos
  def index
    @categories = Category.all
    json_response(@categories)
  end

  # POST /todos
  def create
    @category = Category.create!(category_params)
    json_response(@category, :created)
  end

  # GET /todos/:id
  def show
    json_response(@category)
  end

  # PUT /todos/:id
  def update
    @category.update(category_params)
    head :no_content
  end

  # DELETE /todos/:id
  def destroy
    @category.destroy
    head :no_content
  end

  private

  def category_params
    # whitelist params
    params.permit(:name, :description)
  end

  def set_category
    @todo = Category.find(params[:id])
  end
end
