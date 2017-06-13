class Branch < ActiveRecord::Base
    validates :name, :street, :city, presence: true 
    validates :state, presence: true, length: {is: 2}
end
