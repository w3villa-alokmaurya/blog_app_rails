class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body
      t.belongs_to :category, null: false, foreign_key: true
      t.belongs_to :user, null: false, foreign_key: true
      t.text :tags
      t.boolean :isPublished

      t.timestamps
    end
  end
end
