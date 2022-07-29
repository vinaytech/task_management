class Task < ApplicationRecord

  validates :title, presence: true
  validates :due_date, presence: true
  validates :title, uniqueness: true

  validate :due_date_validate

  enum status: [:assigned, :pending, :in_progress]


  def due_date_validate
    if due_date.present? && due_date.past?
      errors.add(:due_date, "can't be in the past")
    end
  end 

end
