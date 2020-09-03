class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.text :nickname
      t.text :content
      t.text :image

      t.timestamps
    end
  end
end
