class Stock < ApplicationRecord

    def self.new_lookup(ticker_symbol)
        client = IEX::Api::Client.new(
            publishable_token: Rails.application.credentials.iex_client[:sandbox_api_key],
            secret_token: 'pk_652e2af523694576bf47b95cd54f8b33',
            endpoint: 'https://cloud.iexapis.com/v1'
          )
          #look up the price  quote
          client.quote(ticker_symbol).latest_price
    end
end
