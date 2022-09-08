class MerchantFacade

  def self.service
    data = RailsEngineService.all_merchant_data

    @merchants = data[:data].map do |merchant|
      Merchant.new(merchant)
    end
  end

end