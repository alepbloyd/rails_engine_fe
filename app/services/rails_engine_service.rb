class RailsEngineService

  def self.conn
    Faraday.new(url: "http://localhost:3000")
  end

  def self.all_merchant_data
    response = conn.get("/api/v1/merchants")
    json = JSON.parse(response.body, symbolize_names: true)
  end

end