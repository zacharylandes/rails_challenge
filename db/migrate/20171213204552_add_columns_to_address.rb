class AddColumnsToAddress < ActiveRecord::Migration[5.1]
  def change
      add_column :addresses, :street, :string
      add_column :addresses, :city, :string
      add_column :addresses, :state, :string
      add_column :addresses, :zipcode, :integer

  end
end
