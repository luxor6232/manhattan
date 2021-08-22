class CreateServices < ActiveRecord::Migration[6.1]
  def change
    create_table :services do |t|
      t.string :title
      t.text :content
      t.integer :price

      t.timestamps
    end
  end
end
