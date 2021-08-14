class AddReferenceToMenus < ActiveRecord::Migration[6.0]
  def change
    add_reference :menus, :shop, null: false, foreign_key: true
  end
end
