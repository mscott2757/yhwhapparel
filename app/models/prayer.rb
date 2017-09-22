class Prayer < ActiveRecord::Base
  validates :prayer, presence: true

  def affirm
    update(affirms: affirms + 1)
  end

  def approve
    update(approved: true)
  end

  def self.approved
    self.where(approved: true).order(:created_at).reverse
  end

  def self.pending
    self.where(approved: false).order(:created_at).reverse
  end
end
