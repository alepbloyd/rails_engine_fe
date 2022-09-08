class MerchantFacade

  def self.all_merchants
    data = RailsEngineService.all_merchant_data

    @merchants = data[:data].map do |merchant|
      Merchant.new(merchant)
    end
  end

  def self.one_merchant(merchant_id)
    data = RailsEngineService.one_merchant_data(merchant_id)

    @merchant = Merchant.new(data[:data])
  end

end