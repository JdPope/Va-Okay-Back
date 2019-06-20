class CreateUserVacations < ActiveRecord::Migration[5.2]
  def change
    create_table :user_vacations do |t|
      t.references :user, foreign_key: true
      t.references :vacation, foreign_key: true

      t.timestamps
    end
  end
end
