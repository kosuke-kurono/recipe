class Cook < ApplicationRecord
  belongs_to:user
  attachment :image
end
