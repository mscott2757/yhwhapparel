class Prayer < ActiveRecord::Base
  validates :prayer, presence: true
  after_initialize :set_defaults, unless: :persisted?

  def set_defaults
    self.affirms ||= 0
  end
end
