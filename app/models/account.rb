class Account < ::ActiveRecord::Base
  belongs_to :user

  attr_accessor :password
end
