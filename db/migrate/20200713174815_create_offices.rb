class CreateOffices < ActiveRecord::Migration[6.0]
  def change
    create_table :offices do |t|
      t.integer :floor_number, unique: true
      t.belongs_to :company
      t.belongs_to :building
      t.timestamps
    end
  end
end
