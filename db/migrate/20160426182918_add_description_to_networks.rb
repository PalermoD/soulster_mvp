class AddDescriptionToNetworks < ActiveRecord::Migration
  def change
    add_column :networks, :description, :string
  end
end
