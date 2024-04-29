class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string      :name, null: false
      t.string      :email, null: false, unique: true
      t.date        :date_of_hire
      t.references  :department, foreign_key: true

      t.timestamps
    end
  end
end
