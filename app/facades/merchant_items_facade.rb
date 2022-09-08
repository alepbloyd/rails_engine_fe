class MerchantItemsFacade

  def self.merchant_items(merchant_id)
    data = RailsEngineService.merchant_items(merchant_id)

    @items = data[:data].map do |item|
      Item.new(item)
    end
  end

end