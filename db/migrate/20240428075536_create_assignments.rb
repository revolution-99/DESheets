class CreateAssignments < ActiveRecord::Migration[7.0]
  def change
    create_table :assignments do |t|
      t.integer     :hours_worked, default: 0
      t.references  :employee, foreign_key: true, null: false
      t.references  :project, foreign_key: true, null: false

      t.timestamps
    end
  end
end
