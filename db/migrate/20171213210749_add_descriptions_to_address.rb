class AddDescriptionsToAddress < ActiveRecord::Migration[5.1]
  def change
    add_column :addresses, :description, :string
  end
end
