class Store < ActiveRecord::Base
  has_many :employees

  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: {only_integer: true }
  validates :annual_revenue, numericality: {greater_than_or_equal_to: 0}
  validate :apparel_check_test

  def apparel_check_test
    if !(mens_apparel || womens_apparel)
      errors.add(:base , "Doesn't have either men's apparel or womeen's apparel")
    end
  end

end
