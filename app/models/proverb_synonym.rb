class ProverbSynonym < ApplicationRecord
  belongs_to :proverb

  scope :active, -> { where(delete_flag: false) }
  scope :recent, -> { order(id: :desc) }

end
