class RentalsController < ApplicationController
  def index
    @rentals = Rental.page params[:page]
  end

  def new
    @book = Book.new
    @rental = Rental.new
  end

  def create
    @book = Book.find(params[:book].require(:id))
    if @book.Rental_id.nil?
      @rental = Rental.new(rental_date: DateTime.now)
      @rental.User = current_user
      @rental.Book = @book
      if @rental.save
        @book.increment(:rental_count)
        @book.Rental_id = @rental.id
        @book.save
        redirect_to rentals_path
      else
        render'new'
      end
    else
      redirect_to new_rental_path, notice: "貸出中です。"
    end
  end

  def destroy
    @rental = current_user.Rentals.find(params[:id])
    @rental.Book.update(Rental_id: nil)
    @rental.destroy
    redirect_to rentals_path
  end
end
