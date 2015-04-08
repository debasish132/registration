class User < ActiveRecord::Base
	 validates :name, presence: true,length: { minimum: 2 }
	 validates :username, presence: true,length: { minimum: 2 }
	 validates :email, presence: true
	 validates :password, presence: true
	 validates :confirmpassword, presence: true
	 validates :address, presence: true

end
