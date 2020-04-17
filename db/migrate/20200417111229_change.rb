class Change < ActiveRecord::Migration[5.2]
  def change
    rename_column :sections, :pages_id, :page_id
  end
end
