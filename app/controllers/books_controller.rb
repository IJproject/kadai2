class BooksController < ApplicationController
  def index
    @books = Book.all 
  end
  
  def create 
    @book = Book.new(book_params)
    if @book.save
      redirect_to "/books/#{@book.id}"
      flash[:notice] = "Book was successfully created."
    else
      redirect_to "/books"
      flash[:hoge] = "Book was successfully updated."
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end
  
  def update
    book = Book.find(params[:id])
    if book.update(book_params)
      redirect_to "/books/#{book.id}"
      flash[:notice] = "Book was successfully updated."
    else
      redirect_to "/books/#{book.id}/edit"
    end
  end
  
  def destroy
    book = Book.find(params[:id])
    if book.destroy
      redirect_to '/books'
      flash[:notice] = "Book was successfully destroyed."
    else
      redirect_to "/books"
    end
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
