class UserBalance < ActiveRecord::Base
  
  ## Relation
  belongs_to :user 
  
  ## Accessor
  attr_accessible :balance, :user_id
  
  
end
