class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.date :date
      t.time :time
      t.text :from
      t.integer :pax
      t.boolean :paid

      t.timestamps null: false
    end
  end
end
