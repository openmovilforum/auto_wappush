require 'test/unit'
require 'rubygems'
require 'shoulda'
require 'active_support'
$LOAD_PATH << File.dirname(__FILE__) + '/../lib'
require 'auto_wappush'
require 'wp_movistar_gateway'

class AutoWappushTest < Test::Unit::TestCase
  context "Calling AutoWappush with params" do
      setup do
        @aw = AutoWappush.new("my_login", "my_pass")
      end
      should "initialize our values" do
        assert_equal "my_login", @aw.instance_values["login"]
        assert_equal "my_pass", @aw.instance_values["password"]
        assert_equal WpMovistarGateway, @aw.instance_values['wp_gateway'].class
        assert_equal "my_login", @aw.instance_values['wp_gateway'].instance_values["login"]
        assert_equal "my_pass", @aw.instance_values['wp_gateway'].instance_values["password"]
      end

    end
end
