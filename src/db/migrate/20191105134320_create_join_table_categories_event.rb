class CreateJoinTableCategoriesEvent < ActiveRecord::Migration[5.2]
  def change
    create_join_table :categories, :events do |t|
      t.references :category, foreign_key: true
      t.references :event, foreign_key: true
    end
  end
end
