class AddRoleReferenceToUser < ActiveRecord::Migration
  def up
    change_table :users do |t|
      t.references :role, :polymorphic => true
    end
  end

  def down
  	change_table :users do |t|
  		true.remove_references :role, :polymorphic => true
  	end
  end
end
