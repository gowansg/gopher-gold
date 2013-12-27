class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.references :user, index: true
      t.string :name
      t.string :address_line
      t.string :city
      t.integer :zip
      t.string :state
      t.references :survey

      t.timestamps
    end
  end
end
