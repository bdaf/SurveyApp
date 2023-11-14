class CreateSurveys < ActiveRecord::Migration[7.1]
  def change
    create_table :surveys do |t|
      t.integer :age
      t.decimal :growth
      t.string :gender
      t.string :fav_color

      t.timestamps
    end
  end
end
