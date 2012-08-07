class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :code
      t.date :issue_date

      t.timestamps
    end
  end
end
