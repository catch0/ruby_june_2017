class Branch < ActiveRecord::Base
    validates :name, :street, :city, :state, presence: true 
    validates :state, length: {is: 2}
end
