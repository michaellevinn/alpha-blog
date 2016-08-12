class User < ActiveRecord::Base
    validates :name,  presence: true, length: {minimum: 3, maximum: 10}
    validates :password, presence: true, length: {minimum: 6, maximum: 20}
end  