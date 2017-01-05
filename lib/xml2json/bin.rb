require "xml2json/bin/version"
require "active_support/json"
require "active_support/core_ext/hash/conversions"

module Xml2json
  module Bin
    class Converter
      def initialize(xml)
        @hash = Hash.from_xml(xml)
      end

      def to_json
        @hash.to_json
      end
    end
  end
end
