class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string     :title,       null: false
      t.integer    :category_id, null: false
      t.text       :headline,    null: false
      t.text       :ingredient,  null: false
      t.text       :direction,   null: false
      t.text       :memo
      t.references :user,        null: false, foreign_key: true
      t.timestamps
    end
  end
end