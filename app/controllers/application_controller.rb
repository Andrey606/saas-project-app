class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  # set_current_tenant_through_filter
  # before_action :your_method_that_finds_the_current_tenant

  # def your_method_that_finds_the_current_tenant
  #   current_account = Account.find_it
  #   set_current_tenant(current_account)
  # end
end
