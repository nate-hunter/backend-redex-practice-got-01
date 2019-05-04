class CreateAllies < ActiveRecord::Migration[5.2]
  def change
    create_table :allies do |t|
      t.string :name
      t.string :house
      t.string :strength
      t.boolean :alive, default: true

      t.timestamps
    end
  end
end
