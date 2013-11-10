class CreateActs < ActiveRecord::Migration
  def change
    create_table :acts do |t|
      t.string :title
      t.datetime :date

      t.timestamps
    end
  end
end
