class HomeController < ApplicationController
  def index
    if params[:id] == ""
      @nothing = "Please enter a valid symbol"
    elsif
      if params[:id]
        begin #error handling
          @stock = StockQuote::Stock.quote(params[:id])
        rescue StandardError #StandardError is optional
          @error = "That stock symbol doesn't exist .. please enter a valid symbol"
        end
      end
    end
  end

  def about

  end

end
