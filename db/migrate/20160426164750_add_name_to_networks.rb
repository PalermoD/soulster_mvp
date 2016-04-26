class AddNameToNetworks < ActiveRecord::Migration
  def change
    add_column :networks, :name, :string
  end
end
