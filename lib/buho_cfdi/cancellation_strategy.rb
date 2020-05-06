CANCELLATION_STRATEGY = lambda do |cancellation|
  Nokogiri::XML::Builder.new do |xml|
    xml.Cancelacion(cancellation.to_hash) do

      xml.doc.root.add_namespace_definition('xsd', 'http://www.w3.org/2001/XMLSchema')
      xml.doc.root.add_namespace_definition('xsi', 'http://www.w3.org/2001/XMLSchema-instance')
      xml.doc.root.add_namespace_definition('xmlns', 'http://cancelacfd.sat.gob.mx')
 
      #if ((defined? receipt.nodes_cfdirelated) && receipt.nodes_cfdirelated)
        xml.Folios do
          #if receipt.nodes_cfdirelated.nodes_related
            cancellation.nodes_uuid.all.each do |uuid|
              xml.UUID{uuid}
            end
          #end
        end
      #end
 
  
    end
  end
end