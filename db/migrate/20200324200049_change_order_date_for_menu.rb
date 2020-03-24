class ChangeOrderDateForMenu < ActiveRecord::Migration[5.2]
  def change
    change_column :menus, :order_date, :string
  end
end
