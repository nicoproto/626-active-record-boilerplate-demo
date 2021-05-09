class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string  :name
      t.string  :address

      t.timestamps # Will add 2 columns, `created_at` and `updated_at`
    end
  end
end