class User < ApplicationRecord
    # has_many :vehicles

      validates :first_name, presence: true
      validates :last_name, presence: true

    # validates :email, presence: true, length: { minimum: 10 }
end

