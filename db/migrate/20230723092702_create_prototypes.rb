class CreatePrototypes < ActiveRecord::Migration[7.0]
  def change
    create_table :prototypes do |t|
      t.string :title
      t.string :user
      t.text :concept
      t.text :catch_copy
      t.timestamps
    end
  end
end
