class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.references :user, foreign_key: true
      t.text :content
      t.integer :score
      t.references :parent_comment, foreign_key: { to_table: :comments }

      t.timestamps
    end
  end
end