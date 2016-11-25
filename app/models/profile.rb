class Profile < ActiveRecord::Base
  belongs_to :profiled, polymorphic: true
  has_attachment :avatar, accept: [:jpg, :png]
end
