class HomeController < ApplicationController

  def index
    # byebug
    @tenant = nil
    if current_user
      # set_current_tenant(current_user.account.name)
    end
  end
end
