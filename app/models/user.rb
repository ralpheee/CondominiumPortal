class User < ActiveRecord::Base

has_secure_password

validates :username, presence: true
validates :first_name, presence: true
validates :last_name, presence: true
validates :apartment_number, presence: true
validates :username, uniqueness: true
validates :apartment_number, uniqueness: true

end
