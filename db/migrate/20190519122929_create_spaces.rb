class CreateSpaces < ActiveRecord::Migration[6.0]
  def change
    create_table :spaces do |t|
      t.string :title
      t.string :category
      t.string :phone
      t.string :location
      t.text :description

      t.timestamps
    end
  end
end
