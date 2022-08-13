class ApplicationController < ActionController::Base
  # set_current_tenant_by_subdomain_or_domain(:account, :name)

  before_action do
    # binding.irb
    # byebug
  end

  set_current_tenant_through_filter
  before_action :your_method_that_finds_the_current_tenant

  def your_method_that_finds_the_current_tenant
    # byebug
    # current_account = Account.find_it
    # set_current_tenant(current_account)
  end
end
