class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :title, null: false
      t.date   :start_date
      t.date   :end_date

      t.timestamps
    end
  end
end
