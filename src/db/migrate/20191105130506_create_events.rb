class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.string :cover_image
      t.string :host_name, null: false
      t.string :color, null: false, default: 'blue'
      t.string :location, null: false
      t.integer :start_time, null: false
      t.integer :end_time, null: false
      t.references :pricing, foreign_key: true
      t.references :promotion, foreign_key: true
      t.references :user, foreign_key: true, null: false

      t.timestamps
    end
  end
end
