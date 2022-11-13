class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many:cooks,dependent: :destroy
  has_many :favorites, dependent: :destroy
   
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  attachment :profile_image
  
  validates :username,presence:true
  
  def favorite_add?(cook)
    self.favorites.exists?(cook_id: cook.id)
  end
  
end
