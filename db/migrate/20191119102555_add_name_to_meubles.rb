class AddNameToMeubles < ActiveRecord::Migration[6.0]
  def change
    add_column :meubles, :name, :string
  end
end
