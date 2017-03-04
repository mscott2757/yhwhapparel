class Prayer < ActiveRecord::Base
  validates :prayer, presence: true
end
