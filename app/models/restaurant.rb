class Restaurant < ApplicationRecord
  # active record 'association', reviews is dependent on the restaurant :
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: %w[chinese italian japanese french belgian] }
end
