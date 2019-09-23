class Client::ProductsController < ApplicationController

  def index
    response = HTTP.get("http://localhost:3000/api/products")
    @products = response.parse
    render 'index.html.erb'
  end

  def new
    render 'new.html.erb'
  end
  
  def show
    response = HTTP.get("http://localhost:3000/api/products/#{params[:id]}")
    @product = response.parse
    render 'show.html.erb'
  end
end
