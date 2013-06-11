require 'koala'

Koala::Facebook::OAuth.class_eval do
  def initialize_with_default_settings(*args)
    case args.size
    when 0, 1
      raise 'application id and/or secret are not specified in the config' unless ENV['FACEBOOK_APP_ID'] && ENV['FACEBOOK_APP_ID']
      initialize_without_default_settings(ENV['FACEBOOK_APP_ID'].to_s, ENV['FACEBOOK_APP_SECRET'].to_s, args.first)
    when 2, 3
      initialize_without_default_settings(*args)
    end
  end 

  alias_method_chain :initialize, :default_settings
end