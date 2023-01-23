class CreateLikes < ActiveRecord::Migration[7.0]
  def change
    create_table :likes, id: :uuid do |t|
      t.string :things_that_we_liked_id, null: false, index: true, type: :uuid, class_name: 'Like', polymorphic: true
      t.string :things_that_we_liked_type, null: false, index: true, type: :uuid, class_name: 'Like', polymorphic: true
      t.references :user, null: false, foreign_key: true, type: :uuid, index: true, class_name: 'User'

      t.timestamps
    end
    end
end
