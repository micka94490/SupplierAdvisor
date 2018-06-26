class PagesController < ApplicationController

  def home
    @supplier = Supplier.all.sample
  end
end
