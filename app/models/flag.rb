class Flag < ActiveRecord::Base
    belongs_to :user
    belongs_to :creation
end