class CreateClaims < ActiveRecord::Migration
  def change
    create_table :claims do |t|
      t.string :name
      t.string :mothersname
      t.integer :age
      t.integer :salary
      t.integer :claimmoney
      t.integer :duration

      t.timestamps
    end
  end
end
