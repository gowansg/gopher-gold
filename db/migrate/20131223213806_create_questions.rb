class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :text
      t.references :answer_choice, index: true
      t.belongs_to :survey, index: true

      t.timestamps
    end
  end
end
