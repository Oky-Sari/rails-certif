class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.references :user_id, null: false, foreign_key: true
      t.references :post_id, null: false, foreign_key: true
      t.string :content

      t.timestamps
    end
  end
end
