class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :body
      t.string :location
      t.string :date
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
