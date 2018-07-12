class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :lat
      t.string :lng

      t.timestamps null: false
    end
  end
end
