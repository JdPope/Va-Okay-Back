class CreateVacations < ActiveRecord::Migration[5.2]
  def change
    create_table :vacations do |t|
      t.text :about
      t. string :name
      t. boolean :payment_required
      t. string :date_range
      t.timestamps
    end
  end
end
