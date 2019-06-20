class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.integer :amount
      t.string :category
      t.string :date_of_event
      t.integer :vacation_id
      t.integer :user_id
      t.timestamps
    end
  end
end
