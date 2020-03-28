# frozen_string_literal: true

class ChangeOrderDateForMenu < ActiveRecord::Migration[5.2]
  def change
    reversible do |dir|
      dir.up do
        change_column :menus, :order_date, :date, default: Date.today
      end
      dir.down do
        change_column :menus, :order_date, :string
      end
    end
  end
end
