class AutoWappush
  
  def initialize(login = nil, password = nil, gateway = 'movistar')
    wp_settings ||= YAML.load_file(RAILS_ROOT + '/config/autowp.yml') rescue {}
    @login = login.nil? ? wp_settings['login'] : login.to_s
    @password = password.nil? ? wp_settings['password'] : password.to_s
    wp_gateway = (wp_settings.nil? || wp_settings['gateway'].nil?) ? gateway : wp_settings['gateway']
    @wp_gateway ||= "wp_#{wp_gateway}_gateway".camelize.constantize.new(@login, @password)
  end
  
  def send(message, url)
    @wp_gateway.send(message, url)
  end
  
end
