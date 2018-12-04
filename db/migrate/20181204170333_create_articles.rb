class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :name
      t.string :title
      t.text :content
      t.string :imagename

      t.timestamps
    end
  end
end
