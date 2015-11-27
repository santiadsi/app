class CreateHolas < ActiveRecord::Migration
  def change
    create_table :holas do |t|
      t.string :texto

      t.timestamps null: false
    end
  end
end
