class MerchantsController < ApplicationController
  def index
    @merchants = MerchantFacade.service
  end
end