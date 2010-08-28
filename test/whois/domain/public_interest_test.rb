require 'test_helper'

class Whois::Domain::PublicInterestTest < Test::Unit::TestCase

  def test_whois  
    assert_whois_data(EXP_DATA.merge({:to_s => EXP_TO_S}))
    assert Whois::Domain.new("not-reg-1234.org").available?
  end

  EXP_DATA = {
    :name => "example.org",
    :kind => "PublicInterest",
    :created_on => '1995-08-31',
    :updated_on => '2010-07-27',
    :expires_on => '2010-08-30',
    :database_updated_at => false,
    :registrar_name => "Internet Assigned Numbers Authority (IANA) (R193-LROR)",
    :whois_server => "whois.pir.org",
    :raw_match => "Domain Name:EXAMPLE.ORG",
    :status => ['DELETE PROHIBITED', 'RENEW PROHIBITED', 'TRANSFER PROHIBITED', 'UPDATE PROHIBITED'],
    :name_servers => ['A.IANA-SERVERS.NET', 'B.IANA-SERVERS.NET']
  }
    
  EXP_TO_S = <<EOF
Domain ID: D2328855-LROR
Domain Name: EXAMPLE.ORG
Created On: 31-Aug-1995 04:00:00 UTC
Last Updated On: 27-Jul-2010 20:57:51 UTC
Expiration Date: 30-Aug-2010 04:00:00 UTC
Sponsoring Registrar: Internet Assigned Numbers Authority (IANA) (R193-LROR)
Status: DELETE PROHIBITED
Status: RENEW PROHIBITED
Status: TRANSFER PROHIBITED
Status: UPDATE PROHIBITED
Registrant ID: IANA
Registrant Name: Internet Assigned Numbers Authority
Registrant Organization: Internet Assigned Numbers Authority (IANA)
Registrant Street1: 4676 Admiralty Way
Registrant Street2: Suite 330
Registrant City: Marina del Rey
Registrant State/Province: CA
Registrant Postal Code: 92092
Registrant Country: US
Registrant Phone: +1.3108239358
Registrant FAX: +1.3108238649
Registrant Email: res-dom@iana.org
Admin ID: IANA
Admin Name: Internet Assigned Numbers Authority
Admin Organization: Internet Assigned Numbers Authority (IANA)
Admin Street1: 4676 Admiralty Way
Admin Street2: Suite 330
Admin City: Marina del Rey
Admin State/Province: CA
Admin Postal Code: 92092
Admin Country: US
Admin Phone: +1.3108239358
Admin FAX: +1.3108238649
Admin Email: res-dom@iana.org
Tech ID: IANA
Tech Name: Internet Assigned Numbers Authority
Tech Organization: Internet Assigned Numbers Authority (IANA)
Tech Street1: 4676 Admiralty Way
Tech Street2: Suite 330
Tech City: Marina del Rey
Tech State/Province: CA
Tech Postal Code: 92092
Tech Country: US
Tech Phone: +1.3108239358
Tech FAX: +1.3108238649
Tech Email: res-dom@iana.org
Name Server: A.IANA-SERVERS.NET
Name Server: B.IANA-SERVERS.NET
DNSSEC: Signed
DS Created 1: 27-Jul-2010 20:57:22 UTC
DS Maximum Signature Life 1: 3456000 seconds
DS Key Tag 1: 31589
Algorithm 1: 8
Digest Type 1: 1
Digest 1: 7b8370002875dda781390a8e586c31493847d9bc
DS Created 2: 27-Jul-2010 20:57:36 UTC
DS Maximum Signature Life 2: 3456000 seconds
DS Key Tag 2: 31589
Algorithm 2: 8
Digest Type 2: 2
Digest 2: 3fdc4c11fa3ad3535ea8c1ce3eaf7bfa5ca9ae8a834d98fee10085cfaeb625aa
EOF

end
