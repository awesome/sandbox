class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.integer :user_id
      t.string :name
      t.date :dob
      t.string :sex
      t.string :mobile_phone
      t.text :address
      t.string :city

      t.timestamps
    end
  end
end
