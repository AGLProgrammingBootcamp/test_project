class Note < ActiveRecord::Base
    validates :content, presence: true
    validates :income, presence: true
    validates :payment, presence: true
    validates :total, presence: true
end
