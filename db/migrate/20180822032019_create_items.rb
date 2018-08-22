class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.references :checklist, foreign_key: true
      t.boolean :completed

      t.timestamps
    end
  end
end
