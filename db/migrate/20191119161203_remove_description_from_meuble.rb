class RemoveDescriptionFromMeuble < ActiveRecord::Migration[6.0]
  def change
    remove_column :meubles, :description
    add_column :meubles, :description, :text
  end
end

