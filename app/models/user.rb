class User < ApplicationRecord
    has_many :vehicles

    validates :first_name, presence: true
    validates :last_name, presence: true, 
    validates :email, presence: true, length: { minimum: 10 }

    before_validation :ensure_first_name_has_a_value

    private
      def ensure_first_name_has_a_value
        if first_name.nil?
          self.first_name = email unless email.blank?
        end
      end
  end
end
