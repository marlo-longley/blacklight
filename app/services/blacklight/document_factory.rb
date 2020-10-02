# frozen_string_literal: true

module Blacklight
  # A class that create documents from repository results
  class DocumentFactory
    # @return [Blacklight::Document]
    def self.build(data, response, options)
      document_model(data, options).new(data, response)
    end

    # @return [Blacklight::Document]
    def self.document_model(_data, options)
      options[:solr_document_model] || options[:document_model] || SolrDocument
    end
  end
end
