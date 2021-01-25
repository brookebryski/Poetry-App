class CreatePoems < ActiveRecord::Migration[6.0]
  def change
    create_table :poems do |t|
      t.string :title
      t.string :author
      t.string :link
      t.string :image
      t.timestamps
    end
  end
end
