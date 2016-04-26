class AddIconToNetworks < ActiveRecord::Migration
  def change
    add_column :networks, :picture, :string
  end
end
