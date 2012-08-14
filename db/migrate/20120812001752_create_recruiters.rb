class CreateRecruiters < ActiveRecord::Migration
  def change
    create_table :recruiters do |t|
      t.integer :user_id
      t.string :name
      t.text :address
      t.string :phone
      t.string :mobile_phone
      t.string :city
      t.string :website
      t.text :company_description

      t.timestamps
    end
  end
end
