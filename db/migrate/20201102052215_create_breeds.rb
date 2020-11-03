class CreateBreeds < ActiveRecord::Migration[6.0]
  def change
    create_table :breeds do |t|
      t.string  :name,                null: false
      t.integer :category_id,         null: false
      t.integer :beetle_type_id
      t.integer :stag_beetle_type_id
      t.string  :parent_information,  null:false
      t.date    :date,                null:false
      t.text    :result,              null:false
      t.text    :note,                null:false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end