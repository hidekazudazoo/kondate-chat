class CreateCalenders < ActiveRecord::Migration[6.0]
  def change
    create_table :calenders do |t|
      t.string     :menu,        null: false
      t.text       :content
      t.date       :date,        null: false
      t.references :user,        null: false, foreign_key: true
      t.timestamps
    end
  end
end