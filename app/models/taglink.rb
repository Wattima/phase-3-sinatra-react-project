class Taglink < ActiveRecord::Base
  belongs_to :creation
  belongs_to :tag
end
