class Ally < ApplicationRecord
  validates :name, presence: true
  validates :house, presence: true
  validates :strength, presence: true
end
