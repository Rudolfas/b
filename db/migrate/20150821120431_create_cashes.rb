class CreateCashes < ActiveRecord::Migration
  def change
    create_table :cashes do |t|
      t.integer :member_id
      t.float :balance

      t.timestamps null: false
    end
  end
end
