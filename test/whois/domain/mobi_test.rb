require 'test_helper'

class Whois::Domain::MobiTest < Test::Unit::TestCase

  def test_whois
    assert_whois_data(EXP_DATA)
    assert Whois::Domain.new("not-reg-1234.mobi").available?
  end

  EXP_DATA = {
    :name => "mtld.mobi",
    :kind => "Mobi",
    :created_on => '2006-05-11',
    :updated_on => '2011-02-08',
    :expires_on => '2012-05-11',
    :database_updated_at => false,
    :registrar_name => "MarkMonitor Inc. (292)",
    :whois_server => "whois.dotmobiregistry.net",
    :raw_match => "Domain Name:MTLD.MOBI",
    :status => ['CLIENT DELETE PROHIBITED', 'CLIENT TRANSFER PROHIBITED', 'CLIENT UPDATE PROHIBITED'],
    :name_servers => ['E.SERVICE.AFILIASDNS.INFO', 'A.SERVICE.AFILIASDNS.INFO', 'F.SERVICE.AFILIASDNS.NET', 'D.SERVICE.AFILIASDNS.COM', 'C.SERVICE.AFILIASDNS.NET', 'B.SERVICE.AFILIASDNS.ORG']
  }

end
