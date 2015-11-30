class CreateNewsEvents < ActiveRecord::Migration
  def change
    create_table :news_events do |t|
      t.string :title
      t.datetime :post_date
      t.string :author
      t.text :content
      t.references :university, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
