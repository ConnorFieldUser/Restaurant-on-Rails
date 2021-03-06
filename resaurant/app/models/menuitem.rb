class Menuitem < ApplicationRecord
  validates :name, presence: true,
                   length: { minimum: 5, maximum: 20 }
  validates :description, presence: true,
                   length: { minimum: 10, maximum:50 }
end
