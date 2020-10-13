class CreateJoinTableBasketItem < ActiveRecord::Migration[6.0]
  def change
		create_join_table :baskets, :items do |t|
			t.index [:basket_id, :item_id], unique: true
			t.timestamps null: false
		end
  end
end
