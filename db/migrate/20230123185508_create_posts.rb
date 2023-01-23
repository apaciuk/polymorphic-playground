class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts, id: :uuid do |t|
      t.string :title, null: false, default: ''
      t.text :description, null: false, default: ''
      t.references :user, null: false, foreign_key: true, type: :uuid, index: true, class_name: 'User'

      t.timestamps
    end
  end
end
