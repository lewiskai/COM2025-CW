class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string :name, null:false
      t.text :description, nunll:false
      t.belongs_to :user, null: false, foreign_key:true

      t.timestamps null:false
    end

    add_index :recipes, [:user_id, :name]
  end
end
