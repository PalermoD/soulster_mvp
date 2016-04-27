class CreateNetposts < ActiveRecord::Migration
  def change
    create_table :netposts do |t|
      t.text :content
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
