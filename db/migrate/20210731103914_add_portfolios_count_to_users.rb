class AddPortfoliosCountToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :portfolios_count, :integer, null: false, default: 0
  end
end
