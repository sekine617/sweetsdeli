class HomeController < ApplicationController
  def index
    @home1 = Photo.find_by(id: 1)
    @home2 = Photo.find_by(id: 2)
    @home3 = Photo.find_by(id: 3)
    @latest_products = Product.all.order(id: 'DESC').limit(3)
    @popular_products_all = Product.includes(:order_products).sort do |a, b|
      b.order_products.size <=> a.order_products.size
    end
    @popular_products = @popular_products_all[0..2]
    @tag_results = Product.tagged_with('チョコレート').includes(:order_products).sort do |a, b|
      b.order_products.size <=> a.order_products.size
    end
    @chocolate_products = @tag_results[0..2]
  end
end
