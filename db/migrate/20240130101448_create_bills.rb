class CreateBills < ActiveRecord::Migration[7.1]
  def change
    create_table :bills do |t|
      t.string :name
      t.string :icon
      t.references :author, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
