class CreateMortgages < ActiveRecord::Migration
  def change
    create_table :mortgages do |t|
      t.integer :postcode
      t.string :city
      t.string :street
      t.integer :number
      t.integer :floor
      t.integer :door
      t.integer :value
      t.integer :addincome
      t.integer :addexpense
      t.boolean :housemortgage

      t.timestamps
    end
  end
end
