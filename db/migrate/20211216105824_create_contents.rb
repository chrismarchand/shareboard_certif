class CreateContents < ActiveRecord::Migration[6.0]
  def change
    create_table :contents do |t|
      t.string :title
      t.text :description
      t.string :category
      t.string :html_content

      t.timestamps
    end
  end
end
