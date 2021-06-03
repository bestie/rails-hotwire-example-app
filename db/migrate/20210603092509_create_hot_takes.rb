class CreateHotTakes < ActiveRecord::Migration[6.1]
  def change
    create_table :hot_takes do |t|
      t.string :handle
      t.string :content

      t.timestamps
    end
  end
end
