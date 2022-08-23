class User < ApplicationRecord
    validates :name, length: { in: 6..20, message: 'quá ngắn'}
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP, message: 'Khong dung' } 
    has_many :microposts
end