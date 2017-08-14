class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :title
      t.string :address
      t.text :description
      t.date :start_at
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
