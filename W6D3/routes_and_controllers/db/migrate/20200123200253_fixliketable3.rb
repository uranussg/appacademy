class Fixliketable3 < ActiveRecord::Migration[5.2]
  def change
    def change
      add_column :likes, :likeable_type, :string, null: false
      add_index :likes, [:likeable_id, :likeable_type]
    end
  end
end
