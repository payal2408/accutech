class CreateUserFavouriteProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :user_favourite_products do |t|
      t.references :user, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
