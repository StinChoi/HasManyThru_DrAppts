class CreatePatients < ActiveRecord::Migration[6.1]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :age
      t.string :integer
      t.string :description

      t.timestamps
    end
  end
end
