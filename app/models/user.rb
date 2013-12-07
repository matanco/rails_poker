class User < ActiveRecord::Base
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :user_balance
  
  attr_accessible :email, :password, :password_confirmation, :remember_me
  
  after_create :init_balance
    
  def init_balance
    user_balance = UserBalance.new(:user_id => self.id,:balance => "0")
    user_balance.save!
  end

end
