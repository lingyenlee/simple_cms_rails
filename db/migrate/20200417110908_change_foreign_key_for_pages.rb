class ChangeForeignKeyForPages < ActiveRecord::Migration[5.2]
  def change
    rename_column :pages, :subjects_id, :subject_id
  end
end
