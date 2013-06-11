# Load the rails application
require File.expand_path('../application', __FILE__)
require 'ssl_certifier'

OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

ENV['FACEBOOK_APP_ID'] = '578533225500112'
ENV['FACEBOOK_APP_SECRET'] = 'e0e797648f4c80016e4d2895e71ea1c9'

PC02Caballos::Application.initialize!
