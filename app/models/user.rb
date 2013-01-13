class User < ActiveRecord::Base
  has_secure_password
  include RailsSettings::Extend
end
