class Customer < ApplicationRecord
	def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_initialize.tap do |customer|
    customer.provider = auth.provider
    customer.uid = auth.uid
    customer.name = auth.info.name
    customer.oauth_token = auth.credentials.token
    customer.oauth_expires_at = Time.at(auth.credentials.expires_at)
    customer.save!
    end
  end
end
