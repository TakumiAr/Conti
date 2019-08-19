class CreateRecuests < ActiveRecord::Migration[5.2]
  def change
    create_table :recuests do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
