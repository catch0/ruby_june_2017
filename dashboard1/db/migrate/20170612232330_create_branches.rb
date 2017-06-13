class CreateBranches < ActiveRecord::Migration
  def change
    create_table :branches do |t|
      t.string :name
      t.string :street
      t.string :city
      t.string :state

      t.timestamps null: false
    end
  end
end
