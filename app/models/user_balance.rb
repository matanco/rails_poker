class UserBalance < ActiveRecord::Base
  
  ## Relation
  belongs_to :user 
  
  ## Accessor
  attr_accessible :balance, :user_id
  
  ## After bet dedact balance from user
  def self.dedact_balance(id,balance)
    user_balance = UserBalance.find_by_user_id(id)
    dedacted_balance = user_balance.balance.to_i - balance.to_i 
    user_balance.balance = dedacted_balance.to_s 
    user_balance.save!
  end
end
