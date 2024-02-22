class CreatePhotographs < ActiveRecord::Migration[7.1]
  def change
    create_table :photographs do |t|
      t.string :title
      t.string :description
      t.string :url

      t.timestamps
    end
  end
end
