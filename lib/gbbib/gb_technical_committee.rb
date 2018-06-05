module Gbbib
  # GB technical committee.
  class GbTechnicalCommittee
    # @return [String]
    attr_reader :type

    # @return [String]
    attr_reader :name

    # @param type [String]
    # @param name [String]
    def initialize(type:, name:)
      @type = type
      @name = name
    end

    def to_xml(builder)
      builder.gbcommittee(type: @type) do
        builder.text @name
      end
    end
  end
end
