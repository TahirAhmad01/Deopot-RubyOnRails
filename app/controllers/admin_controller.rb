class AdminController < ActionController::Base
  def index
    @total_orders = Order.count
  end
end