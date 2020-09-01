class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.text :title
      t.integer :time
      t.text :description, array: true
      t.text :steps, array: true
      t.text :img_url

      t.timestamps
    end
  end
end
