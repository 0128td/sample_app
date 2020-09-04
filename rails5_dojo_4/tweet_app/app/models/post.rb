class Post < ApplicationRecord
  validates :content, {presence: true, length: {maximum: 140}}
  validates :user_id, {presence: true}
  
  def user
    return User.find_by(id: self.user_id)
    
  end
  
  def likes
    return Like.where(post_id: self.id)
    
  end
  
  
  
end
