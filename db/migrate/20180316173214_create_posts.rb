class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.date :data
      t.text :retionale

      t.timestamps
    end
  end
end
