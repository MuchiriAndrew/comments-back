class CreateReplies < ActiveRecord::Migration[7.0]
  def change
    create_table :replies do |t|
      t.integer :score
      t.references :user, null: false, foreign_key: true
      t.text :content
      t.references :parent_comment, null: false, foreign_key: { to_table: :comments }

      t.timestamps
    end
  end
end
