require 'net/http'
require 'json'

module DfE
  module ReferenceData
    module Uptime
      class Downloader
        def self.download(url)
          JSON.parse(Net::HTTP.get(URI(url)))
        end
      end
    end
  end
end
