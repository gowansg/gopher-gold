class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :title
      t.string :description
      t.datetime :start
      t.datetime :end

      t.timestamps
    end
  end
end
