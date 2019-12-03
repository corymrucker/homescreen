class AddPictureToScreen < ActiveRecord::Migration[5.2]
  def change
    add_column :screens, :picture, :string
  end
end
