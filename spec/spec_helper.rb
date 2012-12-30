require "webmock/rspec"
require "vcr"
require_relative "../lib/hotels_combined"

HotelsCombined.configure do |config|
  config.api_key = "F7538EB2-2B63-4AE1-8C43-2FAD2D83EACB"
  config.private_branding_url = "http://brands.datahc.com/"
end

VCR.configure do |config|
  config.cassette_library_dir = "spec/cassettes"
  config.hook_into :webmock
end

RSpec.configure do |config|
  config.extend VCR::RSpec::Macros
end
