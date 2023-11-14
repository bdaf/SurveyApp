class CreateSurveys < ActiveRecord::Migration[7.1]
  def change
    create_table :surveys do |t|
      t.integer :age, null: false
      t.decimal :growth, null: false
      t.string :gender, null: false
      t.string :fav_color

      t.timestamps
    end
  end
end
