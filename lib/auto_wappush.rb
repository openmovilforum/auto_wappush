class AutoWappush
  
  def initialize(login = nil, password = nil)
    wp_settings ||= YAML.load_file(RAILS_ROOT + '/config/autowp.yml') rescue {}
    wp_login = login.blank? ? wp_settings['login'] : login.to_s
    wp_password = password.blank? ? wp_settings['password'] : password.to_s
    @wp_gateway ||= "wp_#{wp_settings['gateway']}_gateway".camelize.constantize.new(wp_login, wp_password)
  end
  
  def send(message, url)
    @wp_gateway.send(message, url)
  end
  
end
