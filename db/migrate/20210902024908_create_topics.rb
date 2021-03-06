class CreateTopics < ActiveRecord::Migration[6.1]
  def change
    create_table :topics do |t|
      t.string :title
      t.text :desc
      t.belongs_to :sub, null: false, foreign_key: true

      t.timestamps
    end
  end
end
