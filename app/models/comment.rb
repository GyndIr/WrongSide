class Comment < ApplicationRecord
  
  include Visible
  
  belongs_to :chydak
  belongs_to :Vtapke
  
end
