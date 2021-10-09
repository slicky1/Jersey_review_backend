class User < ApplicationRecord
    has_many :reviews, dependent: :destroy

    validates :user_name, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true
    validates :password_digest, presence: true

    validate :must_have_secure_password
   
    def must_have_secure_password
        insecure_passwords = ['password', 'password123', '12345678']
        if insecure_passwords.include?(password_digest)
            errors.add :password_digest, "please use a secure password"
        end
    end
 end
