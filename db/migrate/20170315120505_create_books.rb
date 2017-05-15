class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string 		:title,	null: false		
      t.text		  :description,	default: ''
      t.decimal		:price, precision: 8, scale: 2, null: false
      t.integer		:quantity, default: 1
      t.integer		:year, null: false

      t.timestamps
    end
  end
end
