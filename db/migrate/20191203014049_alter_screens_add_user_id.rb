class AlterScreensAddUserId < ActiveRecord::Migration[5.2]
  def change
  	add_column :screens, :user_id, :integer
    add_index :screens, :user_id
  end
end
