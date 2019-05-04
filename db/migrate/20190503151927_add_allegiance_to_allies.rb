class AddAllegianceToAllies < ActiveRecord::Migration[5.2]
  def change
    add_column :allies, :allegience, :string
  end
end
