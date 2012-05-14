class CreateClaims < ActiveRecord::Migration
  def change
    create_table :claims do |t|
      t.string :name
      t.string :mothersname
      t.date :birth
      t.integer :salary
      t.integer :claimmoney
      t.integer :duration
      t.boolean :mortgage

      t.timestamps
    end
  end
end
