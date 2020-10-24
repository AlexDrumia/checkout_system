class RemoveIndexFromBasketsItems < ActiveRecord::Migration[6.0]
  def change
		remove_index :baskets_items, name: :index_baskets_items_on_basket_id_and_item_id
  end
end

