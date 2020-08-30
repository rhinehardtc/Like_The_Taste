class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.integer :time
      t.string :description
      t.string :steps
      t.string :img_url

      t.timestamps
    end
  end
end
