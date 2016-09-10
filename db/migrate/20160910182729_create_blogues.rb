class CreateBlogues < ActiveRecord::Migration[5.0]
  def change
    create_table :blogues do |t|
      t.string :titre
      t.text :contenu

      t.timestamps
    end
  end
end
