class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :name
      t.integer :total_word_count, default: 0

      t.timestamps
    end
  end
end
