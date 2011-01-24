class Object
  def self.xml_type
    name.gsub(/([a-z])([A-Z])/,'\1-\2').downcase
  end
  def xml_type
    self.class.xml_type
  end
  def to_xml( name = nil )
    name ? %{<#{name} type="#{xml_type}">#{self.to_s}</#{name}>} : self.to_s
  end
  def to_xml!( *args )
    %{<?xml version="1.0" encoding="UTF-8"?>\n} + to_xml( *args )
  end
end

class Integer
  def self.xml_type
    "integer"
  end
end

class Array
  def to_xml
    map{|n|n.to_xml}.join
  end
end

class Hash
  def to_xml( name = nil )
    data = to_a.map{|k,v|v.to_xml(k)}.join
    name ? "<#{name}>#{data}</#{name}>" : data
  end
end
