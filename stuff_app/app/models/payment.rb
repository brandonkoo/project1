
require 'net/http'
require 'uri'
class Payment < ActiveRecord::Base

validate :credit_card_api_access, :on => :create
MERCHANT_ID = "0000992"
INTEGRATION_URL = "https://gateway.cardstream.com/direct/"


end
