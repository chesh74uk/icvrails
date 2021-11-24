class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :summary
      t.string :link
      t.string :filetype
      t.string :stage

      t.timestamps
    end
  end
end
