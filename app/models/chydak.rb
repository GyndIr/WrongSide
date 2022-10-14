class Chydak < ApplicationRecord

include Visible

    validates :title, presence: true
    has_many :comments, dependent: :destroy
    validates :body, presence: true, length: { minimum: 10 }

end
