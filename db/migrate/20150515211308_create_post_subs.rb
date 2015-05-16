class CreatePostSubs < ActiveRecord::Migration
  def change
    create_table :post_subs do |t|
      t.integer :post_id
      t.integer :sub_id

      t.timestamps null: false
    end

    add_index :post_subs, [:sub_id, :post_id], unique: true
    add_index :post_subs, :sub_id
    add_index :post_subs, :post_id
  end
end