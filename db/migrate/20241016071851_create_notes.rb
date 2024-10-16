class CreateNotes < ActiveRecord::Migration[7.2]
  def change
    create_table :notes do |t|
      t.string :title
      t.text :content
      t.string :created_by
      t.timestamps
    end
  end
end
