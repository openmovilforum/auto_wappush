require 'net/http'
require 'uri'

class WpMovistarGateway

  URL = 'http://open.movilforum.com/apis/autowap'

  def initialize(login, password)
    @login = login.to_s
    @password = password.to_s
  end

  def send(message, url)
    response = Net::HTTP.post_form(URI.parse(URL),
      {
        'TM_ACTION' => 'AUTHENTICATE',
        'TME_USER' => @login,
        'TME_PASS' => @password,
        'WAP_Push_URL'=> url, 
        'WAP_Push_Text'=> message
      }
    )
    raise "SMS could not be sent: error #{response.body}" unless response.body =~ /0/
  end

end
