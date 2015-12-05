class User < ::ActiveRecord::Base
  has_many :accounts, dependent: :restrict_with_error
  validates :first_name, uniqueness: true

  def name
    "#{ first_name } #{ last_name }"
  end
end
