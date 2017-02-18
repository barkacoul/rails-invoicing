class FacturePdf < Prawn::Document
    def initialize
        super
        text "order goes here"
    end
end