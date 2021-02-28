# frozen_string_literal: true

class BooksController < ApplicationController
  before_action :set_category
  before_action :set_book, only: %i[show update destroy]

  # GET /todos/:todo_id/items
  def index
    @books = Book.all.order('ASC')
    json_response(@books)
  end

  # GET /todos/:todo_id/items/:id
  def show
    json_response(@book)
  end

  # POST /todos/:todo_id/items
  def create
    @category.books.create!(book_params)
    json_response(@category.books.last, :created)
  end

  def update
    @book.update(book_params)
    head :no_content
  end

  def destroy
    @book.destroy
    head :no_content
  end

  private

  def book_params
    params.permit(:title, :author)
  end

  def set_category
    @category = Category.find(params[:category_id])
  end

  def set_book
    @book = @category.books.find_by!(id: params[:id]) if @category
  end
end
