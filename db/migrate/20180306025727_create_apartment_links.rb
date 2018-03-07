class CreateApartmentLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :apartment_links do |t|
      t.string :link
      t.boolean :sent

      t.timestamps
    end

    add_index :apartment_links, :link, unique: true
  end
end
