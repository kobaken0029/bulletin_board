class CreateContributions < ActiveRecord::Migration
  def change
    create_table :contributions do |t|
      t.text :text
      t.string :contributor
      t.string :email

      t.timestamps null: false
    end
  end
end
