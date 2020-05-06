require "buho_cfdi/version"
require "nokogiri"
require "buho_cfdi/i18n"
require "buho_cfdi/base_node"

require_relative "buho_cfdi/nodes/collection"
require_relative "buho_cfdi/nodes/cfdi_related"
require_relative "buho_cfdi/nodes/concept"
require_relative "buho_cfdi/nodes/customs_information"
require_relative "buho_cfdi/nodes/issuer"
require_relative "buho_cfdi/nodes/receipt"
require_relative "buho_cfdi/nodes/receiver"
require_relative "buho_cfdi/nodes/related"
require_relative "buho_cfdi/nodes/tax_detained"
require_relative "buho_cfdi/nodes/tax_transferred"
require_relative "buho_cfdi/nodes/property_account"
require_relative "buho_cfdi/nodes/part"
require_relative "buho_cfdi/nodes/taxes"
require_relative "buho_cfdi/nodes/detained"
require_relative "buho_cfdi/nodes/transferred"
require_relative "buho_cfdi/nodes/cancellation"
require_relative "buho_cfdi/nodes/uuid"

require "buho_cfdi/params_builder"
require "buho_cfdi/cancellation_builder"
require "buho_cfdi/stamp_strategy"
require "buho_cfdi/cancellation_strategy"
require "buho_cfdi/certificate"
require "buho_cfdi/key"

module BuhoCfdi
  class XmlProcessor
    attr_accessor :stapm_strategy, :cancellation_strategy, :receipt, :cancellation, :cfdi, :params

    def initialize(params)
      @params = params
      @stapm_strategy = STAMP_STRATEGY
      @cancellation_strategy = CANCELLATION_STRATEGY
    end

    def process_xml
      @cfdi = stapm_strategy.call(receipt)

      # file = File.new('xml_example.xml', 'w+')
      # file.write(cfdi.to_xml)
      # file.close

      cfdi
    end

    def process_cancellation
      @cfdi = cancellation_strategy.call(cancellation)

      # file = File.new('xml_example.xml', 'w+')
      # file.write(cfdi.to_xml)
      # file.close

      cfdi
    end

    private 

    def xml_params_builder
      @receipt = BuhoCfdi::ParamsBuilder.new(params).receipt
    end

    def xml_cancellation_builder
      @cancellation = BuhoCfdi::CancellationBuilder.new(params).receipt
    end

  end

  
end
