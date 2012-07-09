class CreateCrawls < ActiveRecord::Migration
  def change
    create_table :crawls do |t|
      t.string :url
      t.string :filter
      t.text :result_html

      t.timestamps
    end
  end
end
