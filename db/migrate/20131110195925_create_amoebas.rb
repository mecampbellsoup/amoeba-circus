class CreateAmoebas < ActiveRecord::Migration
  def change
    create_table :amoebas do |t|
      t.string :name
      t.references :talent, index: true
      t.integer :generation

      t.timestamps
    end
  end
end
