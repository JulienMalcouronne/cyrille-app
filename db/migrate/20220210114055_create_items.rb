class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :category
      t.boolean :availability
      t.string :era

      t.timestamps
    end
  end
end
