class Breed < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  belongs_to_active_hash :beetle_type
  belongs_to_active_hash :stag_beetle_type

  with_options presence: true do
    validates :name
    validates :category_id
    validates :parent_information
    validates :date
    validates :result
    validates :note
  end
  #beetle_type_id と stag_beetle_type_id はどちらかを選択する為、必須項目ではない

  with_options numericality: { other_than: 1 } do
    validates :category_id
    validates :beetle_type_id
    validates :stag_beetle_type
  end
end