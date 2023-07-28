class AddTimeToCommentsAndReplies < ActiveRecord::Migration[7.0]
  def change
    add_column :comments, :timestamp, :string
    add_column :replies, :timestamp, :string
       
  end
end
