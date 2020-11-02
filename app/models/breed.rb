class Breed < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  with_options presence: true do
    validates :name
    validates :category_id
    validates :parent_information
    validates :date
    validates :result
    validates :note
  end
  #beetle_type_id と stag_beetle_type_id はどちらかを選択する為、必須項目ではない
end