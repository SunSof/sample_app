class CreateMicroposts < ActiveRecord::Migration[6.0]
  def change
    create_table :microposts do |t|
      t.text :content
      t.references :user, index: true

      t.timestamps null: false
      # , foreign_key: true
    end
    add_foreign_key :microposts, :users
    add_index :microposts, %i[user_id created_at]
  end
end
