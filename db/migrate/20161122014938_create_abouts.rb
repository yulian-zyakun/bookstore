class CreateAbouts < ActiveRecord::Migration[5.0]
  def change
    create_table :abouts do |t|
      t.text :history
      t.text :mission

      t.timestamps
    end
  end
end
