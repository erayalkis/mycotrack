class AddStatusToBlocks < ActiveRecord::Migration[7.0]
  def change
    # A column that ranges from 0 to 3, indicating different statuses for the block
    # 0 => Block inoculated
    # 1 => Mycelium colonising healthily
    # 2 => Fruiting, has been harvested/will harvest
    # 3 => Discarded (Mycelium no longer producing fruit / Mycelium unhealthy)
    add_column :blocks, :status, :integer, :default => 0, :null => false
  end
end
