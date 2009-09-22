class Whois::Domain::Pro < Whois::Domain::Base
  HOST = "whois.registrypro.pro"
  ATTR_MATCH = /^([^:]+):\W*(.*)\r$/
  responds_to :pro
  
  ATTR_NAMES = {
    :registrar_name => "Sponsoring Registrar",
    :created_on => "Created On",
    :updated_on => "Last Updated On",
    :expires_on => "Expiration Date"
  }
  
  def database_updated_at
    nil
  end
  
  def status
    attrs["Status"] ? attrs["Status"][0].split(",").collect{|d| d.strip} : nil
  end
  
  def whois_server
    HOST
  end
  
  def register_url
    "http://www.registrypro.pro/partners_findaregistrar.htm"
  end

  def available?
    @raw =~ /^No match/
  end
end