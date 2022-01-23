class HomeController < ApplicationController

  def index
    # byebug
    @tenant = nil
    if current_user
      # byebug
      # current_account = Account.find_it
      # set_current_tenant(current_account)
    end
  end
end
