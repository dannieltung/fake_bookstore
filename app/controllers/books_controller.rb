class BooksController < ApplicationController
  def index
    @books = Book.includes(:author, :genre)
    # na view do index eu estou printando o AUTHOR e GENRE gerando N+1
  end
end
