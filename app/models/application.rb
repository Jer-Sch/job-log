class Application < ApplicationRecord
  belongs_to :company, optional: true
  belongs_to :user, optional: true

  validates :company_name, :date, presence: true, allow_nil: true
  validates_inclusion_of :followup, in: [true, false]

  def followed_up
    "Followed up"
  end

  def not_followed_up
    "Not yet followed up"
  end
end
